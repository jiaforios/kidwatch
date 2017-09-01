//
//  NetMacros.swift
//  KidWatch
//
//  Created by admin on 2017/7/10.
//  Copyright © 2017年 com. All rights reserved.
//

import UIKit

//MARK: 网络接口

let kHostBase = "https://kidwatch01.hojy.com"
let kHostPath = "/hgts/api/"
let kHost = kHostBase.appending(kHostPath)
// 发送验证码
let kSendCheckCode = kHost.appending("sendCheckCode")
// 注册账户
let kRegisterAcount = kHost.appending("registerAcount")
// 账户登录
let kAcountLogin = kHost.appending("acountLogin")
// 重置密码
let kResetPassword = kHost.appending("resetPassword")
// 获取设备列表
let kGetAcountDeivceList = kHost.appending("getAcountDeivceList")
// 第一次绑定设备
let kAcountBindImeiFirst = kHost.appending("acountBindImeiFirst")
// 修改密码
let kEditPassword = kHost.appending("editPassword")
// 上传
let kUpload = kHost.appending("upload")
// 检查账户是否注册
let kCheckAcount = kHost.appending("checkAcount")
// 解绑单个人
let kDisBandOneAcount = kHost.appending("disBandOneAcount")
// 解绑全部
let kDisBandAllAcount = kHost.appending("disBandAllAcount")
// 通过imei 查询是否绑定
let kQueryBindInfoByImei = kHost.appending("queryBindInfoByImei")

// 验证token
let kVerificationToken = kHost.appending("verificationToken")
// 绑定其他用户
let kAcountBindImei = kHost.appending("acountBindImei")
// 湖区群成员列表
let kGetGroupMemberList = kHost.appending("getGroupMemberList")

// 获取全部成员列表
let kGetGroupMemberListAll = kHost.appending("getGroupMemberListAll")
// 更新账户信息
let kUpdateAcountInfo = kHost.appending("updateAcountInfo")
// 更新账户信息，同时发送命令给设备
let kUpdateAcountInfoAndSendCMDToImei = kHost.appending("updateAcountInfoAndSendCMDToImei")

// 通过deviceid 查询围栏
let kQueryFenceInfoByDeviceId = kHost.appending("queryFenceInfoByDeviceId")
// 移交管理员
let kDisBandAcountAndChangeAdmin = kHost.appending("disBandAcountAndChangeAdmin")
// 新增、更新围栏
let kInsertOrUpdateFence = kHost.appending("insertOrUpdateFence")
// 删除围栏
let kDeleteFenceById = kHost.appending("deleteFenceById")
// 发送指令
let kAppSendCMD = kHost.appending("appSendCMD")
// 获取历史轨迹
let kGetHistoryLocations = kHost.appending("getHistoryLocations")

// 根据deviceid 查询设备信息
let kQueryDeviceByDeviceId = kHost.appending("queryDeviceByDeviceId")
// 根据deviceid 查询闹钟
let kQueryAlarmClockByDeviceId = kHost.appending("queryAlarmClockByDeviceId")
// 新增，更新闹钟
let kInsertOrUpdateAlarmClock = kHost.appending("insertOrUpdateAlarmClock")
//删除闹钟
let kDeleteAlarmClock = kHost.appending("deleteAlarmClock")
// 计步
let kQueryStepsInfoByDeviceIdAndDate = kHost.appending("queryStepsInfoByDeviceIdAndDate")
// 更新设备定时开关机开关机
let kUpdateDevicePower = kHost.appending("updateDevicePower")

// 查询设备开关机
let kQueryDevicePowerByDeviceId = kHost.appending("queryDevicePowerByDeviceId")
// 查询设备状态
let kQueryDeviceStateByDeviceId = kHost.appending("queryDeviceStateByDeviceId")
// 新增，更新开关
let kInsertOrUpdateDeviceSwtich = kHost.appending("insertOrUpdateDeviceSwtich")
// 新增上课禁用
let kInsertOrUpdateForbiddenTime = kHost.appending("insertOrUpdateForbiddenTime")
// 查询上课禁用时间
let kQueryForbiddenTimeByDeviceId = kHost.appending("queryForbiddenTimeByDeviceId")
// 意见反馈
let kInsertOrUpdateOpinions = kHost.appending("insertOrUpdateOpinions")
// 更新设备状态
let kUpdateDevicePowerState = kHost.appending("updateDevicePowerState")
// 检查设备绑定状态
let kCheckDeviceBindStatus = kHost.appending("checkDeviceBindStatus")
// 申请绑定
let kApplyBindDevice = kHost.appending("applyBindDevice")

// 添加（新）
let kAddDeviceContracts = kHost.appending("addDeviceContracts")

// 获取列表（新）
let kQueryDeviceContractsList = kHost.appending("queryDeviceContractsListForApp")

// 审核结果
let kReplayApplyBindDevice = kHost.appending("replayApplyBindDevice")

// 管理员编辑联系人（新）
let kEditDeviceContracts = kHost.appending("editDeviceContracts")

// 管理员删除联系人
let kDelDeviceContracts = kHost.appending("delDeviceContracts")
// 解绑设备（非管理员解除自己）
let kDisBandDeviceContracts = kHost.appending("disBandDeviceContracts")

// 解绑所有人
let kDisBandAllDeviceContracts = kHost.appending("disBandAllDeviceContracts")



//MARK:  第三方sdk
let GaodeMapKey = "09d724217d24989262ee022fd5d54310"
