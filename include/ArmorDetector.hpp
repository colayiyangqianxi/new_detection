#ifndef NUM_DECTEC_ARMORDETECTOR_H
#define NUM_DECTEC_ARMORDETECTOR_H

#pragma once

#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc.hpp"
#include "DNN_detect.h"
#include <iostream>

#include "robot_state.h"

using namespace std;

#define POINT_DIST(p1,p2) std::sqrt((p1.x-p2.x)*(p1.x-p2.x)+(p1.y-p2.y)*(p1.y-p2.y))

//灯条结构体
struct Light : public cv::RotatedRect     //灯条结构体
{
    Light();
    explicit Light(cv::RotatedRect &box) : cv::RotatedRect(box)
    {
        cv::Point2f p[4];
        box.points(p);
        std::sort(p,p+4,[](const cv::Point2f &a, const cv::Point2f &b) {return a.y<b.y;});
        top = (p[0] + p[1]) / 2;
        bottom = (p[2] + p[3]) / 2;
        height = POINT_DIST(top, bottom);
        width = POINT_DIST(p[0], p[1]);
        angle = top.x < bottom.x ? box.angle : 90 + box.angle;

    }
    int lightColor;
    cv::Point2f top;
    cv::Point2f bottom;
    double angle;
    double height;
    double width;


};

//装甲板结构体
struct Armor : public cv::RotatedRect    //装甲板结构体
{
    Armor();
    explicit Armor(cv::RotatedRect &box) : cv::RotatedRect(box)
    {

    }
    double light_height_rate;  // 左右灯条高度比
    double confidence;
    int id;  // 装甲板类别
    int area;  // 装甲板面积
    EnermyType type;  // 装甲板类型
};

//主类
class ArmorDetector:public robot_state
{
public:
    ArmorDetector(); //构造函数初始化

    void setImage(const cv::Mat &src); //对图像进行设置

    void findLights(); //找灯条获取候选匹配的灯条

    void matchLights(); //匹配灯条获取候选装甲板

    void chooseTarget(); //找出优先级最高的装甲板

    Armor transformPos(const cv::Mat &src); //将最终目标的坐标转换到摄像头原大小的

private:
    int lostCnt;
    int binThresh;

    //light_judge_condition
    double light_max_angle;
    double light_min_hw_ratio;
    double light_max_hw_ratio;   // different distance and focus
    double light_min_area_ratio;   // RotatedRect / Rect
    double light_max_area_ratio;


    //armor_judge_condition
    double armor_max_wh_ratio;
    double armor_min_wh_ratio;
    double armor_max_angle;
    double armor_height_offset;
    double armor_ij_min_ratio;
    double armor_ij_max_ratio;

    //armor_grade_condition
    double big_wh_standard;
    double small_wh_standard;
    double near_standard;

    //armor_grade_project_ratio
    double id_grade_ratio;
    double wh_grade_ratio;
    double height_grade_ratio;
    double near_grade_ratio;
    double angle_grade_ratio;

    bool Lost;
    bool smallArmor;

    cv::Mat _src;  // 裁剪src后的ROI
    cv::Mat _binary;
    std::vector<cv::Mat> temps;

    cv::Rect detectRoi;  //为了把src通过roi变成_src

    Armor lastArmor;


    std::vector<Light> candidateLights; // 筛选的灯条
    std::vector<Armor> candidateArmors; // 筛选的装甲板
    Armor finalArmor;  // 最终装甲板
    cv::Rect finalRect;  // 最终框住装甲板旋转矩形的正矩形

    cv::Point2f dst_p[4] = {cv::Point2f(0,60),cv::Point2f(0,0),cv::Point2f(30,0),cv::Point2f(30,60)};


    bool isLight(Light& light, std::vector<cv::Point> &cnt);

    void detectNum(cv::RotatedRect &f_rect, Armor& armor);

    bool conTain(cv::RotatedRect &match_rect,std::vector<Light> &Lights, size_t &i, size_t &j);

    int armorGrade(const Armor& checkArmor);

    inline bool makeRectSafe(cv::Rect & rect, cv::Size size){
        if (rect.x < 0)
            rect.x = 0;
        if (rect.x + rect.width > size.width)
            rect.width = size.width - rect.x;
        if (rect.y < 0)
            rect.y = 0;
        if (rect.y + rect.height > size.height)
            rect.height = size.height - rect.y;
        if (rect.width <= 0 || rect.height <= 0)
            // 如果发现矩形是空的，则返回false
            return false;
        return true;
    }

    static inline bool area_sort(std::vector<cv::Point> &cnt1,std::vector<cv::Point> &cnt2)
    {
        return cv::contourArea(cnt1) > cv::contourArea(cnt2);
    }

    static inline bool height_sort(Armor &candidate1,Armor &candidate2)
    {
        return candidate1.size.height > candidate2.size.height;
    }


};



#endif //NUM_DECTEC_ARMORDETECTOR_H
