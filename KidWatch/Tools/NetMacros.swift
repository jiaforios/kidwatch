//
//  NetMacros.swift
//  KidWatch
//
//  Created by admin on 2017/7/10.
//  Copyright © 2017年 com. All rights reserved.
//

import UIKit

let kHost = "https://kidwatch01.hojy.com"
// 发送验证码
let kSendCheckCode = kHost.appending("/hgts/api/sendCheckCode")
// 注册账户
let kRegisterAcount = kHost.appending("/hgts/api/registerAcount")
// 账户登录
let kAcountLogin = kHost.appending("/hgts/api/acountLogin")
// 重置密码
let kResetPassword = kHost.appending("/hgts/api/resetPassword")
// 获取设备列表
let kGetAcountDeivceList = kHost.appending("/hgts/api/getAcountDeivceList")
// 第一次绑定设备
let kAcountBindImeiFirst = kHost.appending("/hgts/api/acountBindImeiFirst")
// 修改密码
let kEditPassword = kHost.appending("/hgts/api/editPassword")
// 上传
let kUpload = kHost.appending("/hgts/api/upload")
// 检查账户是否注册
let kCheckAcount = kHost.appending("/hgts/api/checkAcount")
// 解绑单个人
let kDisBandOneAcount = kHost.appending("/hgts/api/disBandOneAcount")
// 解绑全部
let kDisBandAllAcount = kHost.appending("/hgts/api/disBandAllAcount")
// 通过imei 查询是否绑定
let kQueryBindInfoByImei = kHost.appending("/hgts/api/queryBindInfoByImei")

// 验证token
let kVerificationToken = kHost.appending("/hgts/api/verificationToken")
// 绑定其他用户
let kAcountBindImei = kHost.appending("/hgts/api/acountBindImei")
// 湖区群成员列表
let kGetGroupMemberList = kHost.appending("/hgts/api/getGroupMemberList")

// 获取全部成员列表
let kGetGroupMemberListAll = kHost.appending("/hgts/api/getGroupMemberListAll")
// 更新账户信息
let kUpdateAcountInfo = kHost.appending("/hgts/api/updateAcountInfo")
// 更新账户信息，同时发送命令给设备
let kUpdateAcountInfoAndSendCMDToImei = kHost.appending("/hgts/api/updateAcountInfoAndSendCMDToImei")

// 通过deviceid 查询围栏
let kQueryFenceInfoByDeviceId = kHost.appending("/hgts/api/queryFenceInfoByDeviceId")
// 移交管理员
let kDisBandAcountAndChangeAdmin = kHost.appending("/hgts/api/disBandAcountAndChangeAdmin")
// 新增、更新围栏
let kInsertOrUpdateFence = kHost.appending("/hgts/api/insertOrUpdateFence")
// 删除围栏
let kDeleteFenceById = kHost.appending("/hgts/api/deleteFenceById")
// 发送指令
let kAppSendCMD = kHost.appending("/hgts/api/appSendCMD")
// 获取历史轨迹
let kGetHistoryLocations = kHost.appending("/hgts/api/getHistoryLocations")

// 根据deviceid 查询设备信息
let kQueryDeviceByDeviceId = kHost.appending("/hgts/api/queryDeviceByDeviceId")
// 根据deviceid 查询闹钟
let kQueryAlarmClockByDeviceId = kHost.appending("/hgts/api/queryAlarmClockByDeviceId")
// 新增，更新闹钟
let kInsertOrUpdateAlarmClock = kHost.appending("/hgts/api/insertOrUpdateAlarmClock")
//删除闹钟
let kDeleteAlarmClock = kHost.appending("/hgts/api/deleteAlarmClock")
// 计步
let kQueryStepsInfoByDeviceIdAndDate = kHost.appending("/hgts/api/queryStepsInfoByDeviceIdAndDate")
// 更新设备定时开关机开关机
let kUpdateDevicePower = kHost.appending("/hgts/api/updateDevicePower")

// 查询设备开关机
let kQueryDevicePowerByDeviceId = kHost.appending("/hgts/api/queryDevicePowerByDeviceId")
// 查询设备状态
let kQueryDeviceStateByDeviceId = kHost.appending("/hgts/api/queryDeviceStateByDeviceId")
// 新增，更新开关
let kInsertOrUpdateDeviceSwtich = kHost.appending("/hgts/api/insertOrUpdateDeviceSwtich")
// 新增上课禁用
let kInsertOrUpdateForbiddenTime = kHost.appending("/hgts/api/insertOrUpdateForbiddenTime")
// 查询上课禁用时间
let kQueryForbiddenTimeByDeviceId = kHost.appending("/hgts/api/queryForbiddenTimeByDeviceId")
// 意见反馈
let kInsertOrUpdateOpinions = kHost.appending("/hgts/api/insertOrUpdateOpinions")
// 更新设备状态
let kUpdateDevicePowerState = kHost.appending("/hgts/api/updateDevicePowerState")



//MARK:  第三方sdk
let GaodeMapKey = "09d724217d24989262ee022fd5d54310"
