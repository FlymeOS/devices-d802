.class public interface abstract Lcom/android/internal/telephony/lgeautoprofiling/LgeKeyProfiling;
.super Ljava/lang/Object;
.source "LgeKeyProfiling.java"


# static fields
.field public static final KEY_ADD_PROTOCOL_ID:Ljava/lang/String; = "addProtocolID"

.field public static final KEY_ADD_SCADDRESS:Ljava/lang/String; = "addSCAddress"

.field public static final KEY_ALLOW_EMPTY_SMS_SENDING:Ljava/lang/String; = "allow_sending_empty_sms"

.field public static final KEY_ALLOW_MBP_DIRECT_SMS_RECEIVING:Ljava/lang/String; = "allow_sending_MBP_directed_sms"

.field public static final KEY_APP_DIRECTED_SMS:Ljava/lang/String; = "app_directed_sms"

.field public static final KEY_ATT_VVM:Ljava/lang/String; = "att_vvm"

.field public static final KEY_BCD_ADDED_ABC_AND_WILD:Ljava/lang/String; = "BCDaddedABCandWild"

.field public static final KEY_CANADA_VOICEMAIL:Ljava/lang/String; = "Canada_voicemail"

.field public static final KEY_CAT_SECURITY_MO_SMS_POP_UP:Ljava/lang/String; = "cta_security_mo_sms_pop_up"

.field public static final KEY_CB_INTENT_TO_CURRENT_USER:Ljava/lang/String; = "cb_intent_to_current_user"

.field public static final KEY_CB_OVER_UT:Ljava/lang/String; = "cb_over_ut"

.field public static final KEY_CDMA_CAUSE_CODE_DISPLAY:Ljava/lang/String; = "cdma_cause_code_display"

.field public static final KEY_CDMA_KR_TESTBED_MMS_RECEIVE:Ljava/lang/String; = "cdma_kr_testbed_mms_receive"

.field public static final KEY_CDMA_PLUS_DIAL_CODE_CONVERT:Ljava/lang/String; = "cdma_plus_dial_code_convert"

.field public static final KEY_CDMA_PRIORITY_INDICATOR:Ljava/lang/String; = "cdma_priority_indicator"

.field public static final KEY_CDMA_PRIVACY_INDICATOR:Ljava/lang/String; = "cdma_privacy_indicator"

.field public static final KEY_CDMA_SIM_MT_PROC:Ljava/lang/String; = "cdma_sim_mt_proc"

.field public static final KEY_CDMA_SMS_CALL_BACK:Ljava/lang/String; = "cdma_sms_callback"

.field public static final KEY_CDMA_SMS_CDG2:Ljava/lang/String; = "cdma_sms_cdg2"

.field public static final KEY_CDMA_SMS_DISPLAY_MODE:Ljava/lang/String; = "cdma_sms_display_mode"

.field public static final KEY_CF_OVER_UT:Ljava/lang/String; = "cf_over_ut"

.field public static final KEY_CHANGE_CDMA_SUBSCRIPTION_TO_RUIM:Ljava/lang/String; = "CHANGE_CDMA_SUBSCRIPTION_TO_RUIM"

.field public static final KEY_CHANGE_LIMIT_NUMBER_UNAUTHORIZED_SMS_USAGE:Ljava/lang/String; = "change_limit_number_unauthorized_SMS_usage"

.field public static final KEY_CHECK_ORIG_BYTES:Ljava/lang/String; = "kddi_check_orig_bytes"

.field public static final KEY_CHECK_RADIO_TECH_FOR_MSG_SENDING:Ljava/lang/String; = "check_radio_tech_for_msg_sending"

.field public static final KEY_CIQ_ATT:Ljava/lang/String; = "lge_call_att"

.field public static final KEY_CIQ_TMUS:Ljava/lang/String; = "lge_call_tmus"

.field public static final KEY_CLEAR_CODES:Ljava/lang/String; = "custom_clear_codes"

.field public static final KEY_CLIR_DISPLAY:Ljava/lang/String; = "clir_display"

.field public static final KEY_CLIR_OVER_UT:Ljava/lang/String; = "clir_over_ut"

.field public static final KEY_CONCAT_EXPIRED_TIME:Ljava/lang/String; = "concat_expired_time"

.field public static final KEY_CONCAT_MT_CHECK_TIMESTAMP:Ljava/lang/String; = "ConcatMTCheckTimestamp"

.field public static final KEY_CONCAT_MT_CHECK_TIMESTAMP_DCM:Ljava/lang/String; = "ConcatMTCheckTimestamp_DCM"

.field public static final KEY_CONCAT_MT_CHECK_TIMESTAMP_KDDI:Ljava/lang/String; = "ConcatMTCheckTimestamp_kddi"

.field public static final KEY_CONCAT_REF_IN_DSDA:Ljava/lang/String; = "concat_ref_in_dsda"

.field public static final KEY_CONCAT_STITCHING:Ljava/lang/String; = "concat_stitching"

.field public static final KEY_CONFIRM_READ:Ljava/lang/String; = "confirmRead"

.field public static final KEY_CONTROL_PARSE_EMAIL_ON_UICC:Ljava/lang/String; = "parse_email_on_uicc"

.field public static final KEY_CONTROL_SEPERATE_PROCESSING_SMS_UICC:Ljava/lang/String; = "seperate_processing_sms_uicc"

.field public static final KEY_CONTROL_UICC_STORAGE:Ljava/lang/String; = "control_uicc_storage"

.field public static final KEY_CONVERT_SMS_NUMBER_FOR_ROAMING:Ljava/lang/String; = "convert_sms_number_for_roaming"

.field public static final KEY_COUNT_CHARINDEX_INSTEADOF_SEPTETS:Ljava/lang/String; = "countCharIndexInsteadOfSeptets"

.field public static final KEY_COUNT_LENGTH_BY_BYTES:Ljava/lang/String; = "countLengthBytes"

.field public static final KEY_CREATE_PDU_BY_SMS_FORMAT:Ljava/lang/String; = "create_pdu_by_sms_format"

.field public static final KEY_CREATE_PDU_BY_SMS_STATUS:Ljava/lang/String; = "create_pdu_by_sms_status"

.field public static final KEY_CTC_SPAM_MSG:Ljava/lang/String; = "ctc_spam_msg"

.field public static final KEY_CW_OVER_UT:Ljava/lang/String; = "cw_over_ut"

.field public static final KEY_DCM_CHECK_SIM_FULL_STATE:Ljava/lang/String; = "check_sim_full_state"

.field public static final KEY_DCM_COPYTOSIM_LOCALTIMEZONE:Ljava/lang/String; = "dcm_copytosim_localtimezone"

.field public static final KEY_DCM_MEMFULL_SMSPUSH:Ljava/lang/String; = "DCM_MEMFULL_SMSPUSH"

.field public static final KEY_DCM_NPI_4_3_1_1:Ljava/lang/String; = "DCM_NPI_4.3.1.1"

.field public static final KEY_DCM_SERVICE_TYPE_OTA_DM:Ljava/lang/String; = "dcm_service_type_ota_dm"

.field public static final KEY_DCM_SUPPORT_COPYTOSIM_TP_OA_ADDRESS_NTT_DOCOMO:Ljava/lang/String; = "support_copytosim_tp_oa_address_ntt_docomo"

.field public static final KEY_DCM_SUPPORT_SIM_LOAD_VOICEMAIL_TP_OA_ADDRESS_NTT_DOCOMO:Ljava/lang/String; = "dcm_support_sim_load_voice_mail_tp_oa_address_ntt_docomo"

.field public static final KEY_DEFAULT_SMS_CHANGE_TO_OPERATOR_SMS:Ljava/lang/String; = "default_sms_change_to_operator_sms"

.field public static final KEY_DISPLAY_OF_REDIRECT_NUM:Ljava/lang/String; = "display_of_redirect_number"

.field public static final KEY_DO_NOT_SAVE_SMS_TO_ISIS_SHORT_CODE:Ljava/lang/String; = "do_not_save_sms_to_isis_short_code"

.field public static final KEY_DO_NOT_USE_AP_RETRY:Ljava/lang/String; = "doNotUse_AP_retry"

.field public static final KEY_DO_NOT_USE_CLASS2:Ljava/lang/String; = "doNotUse_Class2"

.field public static final KEY_DTMF_ERROR_HANDLE:Ljava/lang/String; = "dtmf_error_handle"

.field public static final KEY_ECC_LIST:Ljava/lang/String; = "ECC_list"

.field public static final KEY_ECC_NUMBER_IN_HIDDEN_MENU:Ljava/lang/String; = "ecc_number_in_hidden_menu"

.field public static final KEY_EMS_SEGMENT_TIMER:Ljava/lang/String; = "ems_segment_timer"

.field public static final KEY_ENABLE_SMS_OVER_IMS_ON_VOLTE_E911:Ljava/lang/String; = "enable_sms_over_ims_on_volte_e911"

.field public static final KEY_FORCE_WRITE_MODE_ALLOWED:Ljava/lang/String; = "force_write_mode_allowed"

.field public static final KEY_GLOBAL_SPAM_MSG:Ljava/lang/String; = "GLOBALspam"

.field public static final KEY_GOOGLE_AUTHENTICATION_SMS:Ljava/lang/String; = "google_authentication_sms"

.field public static final KEY_GSM_STRICT_ENCODING:Ljava/lang/String; = "gsm_strict_encoding"

.field public static final KEY_GUIDE_AUTOMATIC_TIME_SETTING:Ljava/lang/String; = "guide_automatic_time_setting"

.field public static final KEY_HANDLE8BIT:Ljava/lang/String; = "handle8bit"

.field public static final KEY_HANDLE_TELESERVICE_WPT:Ljava/lang/String; = "handle_teleservice_wpt"

.field public static final KEY_HOME_NETWORK:Ljava/lang/String; = "HOME_NETWORK"

.field public static final KEY_INCREASE_MO_MSG_QUEUE_LIMIT_VZW:Ljava/lang/String; = "increase_mo_msg_queue_limit_vzw"

.field public static final KEY_INCREASE_USER_PERMIT_SENT_SMS_MAX_COUNT:Ljava/lang/String; = "increase_user_permit_sent_sms_max_count"

.field public static final KEY_INSERT_BOOTTIME_FOR_SIM_MOSMS:Ljava/lang/String; = "insert_boottime_for_sim_mosms"

.field public static final KEY_INTEL_MODEM:Ljava/lang/String; = "intel_modem"

.field public static final KEY_ISALLOW_SENDSMS:Ljava/lang/String; = "permitted_package_smsmo_in_capable_sms_false"

.field public static final KEY_IS_QCRIL:Ljava/lang/String; = "Is_QCRIL"

.field public static final KEY_KDDI_DUPLICATE_CHECK:Ljava/lang/String; = "kddi_message_duplicate_check"

.field public static final KEY_KDDI_MODEL_USING_ONLY_HANGOUT_TO_DUPLICATED_CHECK:Ljava/lang/String; = "kddi_for_model_only_using_hangout_to_message_duplicate_check"

.field public static final KEY_KDDI_STATUS_REPORT_IWK:Ljava/lang/String; = "kddi_receive_status_report_iwk"

.field public static final KEY_KEEP_VOICEMAIL_ONUPGRADE_G3LOS:Ljava/lang/String; = "keep_voicemail_onupgrade_g3los"

.field public static final KEY_KOREA_CDNIP:Ljava/lang/String; = "Korea_CDNIP"

.field public static final KEY_KOREA_CNAP:Ljava/lang/String; = "Korea_CNAP"

.field public static final KEY_KOREA_RAD:Ljava/lang/String; = "Korea_RAD"

.field public static final KEY_KOREA_RAD_TEST:Ljava/lang/String; = "KR_RAD_TEST"

.field public static final KEY_KOREA_USSD:Ljava/lang/String; = "Korea_USSD"

.field public static final KEY_KROPERATOR:Ljava/lang/String; = "KROperator"

.field public static final KEY_KR_ADDRESS_SPEC:Ljava/lang/String; = "kr_address_spec"

.field public static final KEY_KR_ENCODING_SCHEME:Ljava/lang/String; = "KREncodingScheme"

.field public static final KEY_KR_NOT_SAVE_AFTER_SEND:Ljava/lang/String; = "KR_notSaveAfterSend"

.field public static final KEY_KR_OPERATOR_WEB_SEND:Ljava/lang/String; = "kr_operator_web_send"

.field public static final KEY_KR_REJECT_CAUSE:Ljava/lang/String; = "KR_REJECT_CAUSE"

.field public static final KEY_KR_VMS_TYPE:Ljava/lang/String; = "KRVMSType"

.field public static final KEY_KR_WAPPUSH_WITH_SPAM:Ljava/lang/String; = "KRWapPushWithSpam"

.field public static final KEY_KSC5601_DECODING:Ljava/lang/String; = "KSC5601Decoding"

.field public static final KEY_KSC5601_ENCODING:Ljava/lang/String; = "KSC5601Encoding"

.field public static final KEY_KSC5601_ENCODING_US_CDMA:Ljava/lang/String; = "KSC5601EncodingUSCDMA"

.field public static final KEY_KT_CFU_FROM_JB:Ljava/lang/String; = "KT_CFU_FROM_JB"

.field public static final KEY_KT_FOTA_MSG:Ljava/lang/String; = "KTFotaMessage"

.field public static final KEY_KT_LBS:Ljava/lang/String; = "KT_LBS"

.field public static final KEY_KT_PORT_MSG:Ljava/lang/String; = "KTPortMessage"

.field public static final KEY_KT_ROAMING_NOTIFICATION:Ljava/lang/String; = "kt_roaming_notification"

.field public static final KEY_KT_SPAM_MSG:Ljava/lang/String; = "KTspam"

.field public static final KEY_KT_URLCALLBACK:Ljava/lang/String; = "KTUrlCallback"

.field public static final KEY_LGE_CALL_ATT:Ljava/lang/String; = "lge_call_att"

.field public static final KEY_LGE_CALL_TMUS:Ljava/lang/String; = "lge_call_tmus"

.field public static final KEY_LGE_MODEM:Ljava/lang/String; = "lge_modem"

.field public static final KEY_LGE_NUMBER_FORMAT:Ljava/lang/String; = "LGE_NumberFormat"

.field public static final KEY_LGE_PHONE_NUMBER_QUERY:Ljava/lang/String; = "LGE_PHONE_NUMBER_QUERY"

.field public static final KEY_LGGSMTB_CBS_BLOCKING:Ljava/lang/String; = "LGGSMTBCBSBlocking"

.field public static final KEY_LGU_ADDRESS_SPEC:Ljava/lang/String; = "lgu_address_spec"

.field public static final KEY_LGU_CBS:Ljava/lang/String; = "lgu_cbs"

.field public static final KEY_LGU_CDMA_ERI_TEXT:Ljava/lang/String; = "LGU_CDMA_ERI_TEXT"

.field public static final KEY_LGU_DISABLE_SMSOVERIMS_IN_GSM:Ljava/lang/String; = "lgu_disable_smsoverims_in_gsm"

.field public static final KEY_LGU_DISPATCH:Ljava/lang/String; = "lgu_dispatch"

.field public static final KEY_LGU_GLOBAL_ROAMING:Ljava/lang/String; = "lgu_global_roaming"

.field public static final KEY_LGU_GSM_OPERATOR_MESSAGE:Ljava/lang/String; = "lgu_gsm_operator_message"

.field public static final KEY_LGU_GSM_SUBMIT_ENCODING_TYPE:Ljava/lang/String; = "lgu_gsm_submit_encoding_type"

.field public static final KEY_LGU_KNIGHT_V2_9:Ljava/lang/String; = "LGU_KNIGHT_V2_9"

.field public static final KEY_LGU_LTE_ROAMING:Ljava/lang/String; = "lgu_lte_roaming"

.field public static final KEY_LGU_LTE_SINGLE_DEVICE:Ljava/lang/String; = "lgu_lte_single_device"

.field public static final KEY_LGU_OEMMMS:Ljava/lang/String; = "LGU_OEMMMS"

.field public static final KEY_LGU_SMS_FORMAT_3GPP:Ljava/lang/String; = "LGUSmsFormat3GPP"

.field public static final KEY_LGU_SPAM_MSG:Ljava/lang/String; = "LGUspam"

.field public static final KEY_LGU_USERDATA_ENCODING:Ljava/lang/String; = "lgu_userdata_encoding"

.field public static final KEY_LIMITLESS_UNAUTHORIZED_SMS_USAGE:Ljava/lang/String; = "limitless_unauthorized_SMS_usage"

.field public static final KEY_LIMIT_USER_DATA_SEPTETS:Ljava/lang/String; = "limit_user_data_septets"

.field public static final KEY_LINK_MODE_FOR_ALL_SEGS:Ljava/lang/String; = "link_mode_for_all_segs"

.field public static final KEY_LTE_ROAMING_KT:Ljava/lang/String; = "LTE_ROAMING_KT"

.field public static final KEY_LTE_ROAMING_SKT:Ljava/lang/String; = "LTE_ROAMING_SKT"

.field public static final KEY_MAKE_PART_SEND_CONCAT_MESSAGE:Ljava/lang/String; = "MakePartsSendConcatMessage"

.field public static final KEY_MANAGED_TIME_LOCAL_AREAS:Ljava/lang/String; = "MANAGED_TIME_LOCAL_AREAS"

.field public static final KEY_MANAGED_TIME_SETTING:Ljava/lang/String; = "MANAGED_TIME_SETTING"

.field public static final KEY_MANUAL_SELECTION_WITH_RAT:Ljava/lang/String; = "MANUAL_SELECTION_WITH_RAT"

.field public static final KEY_MANUAL_TIMEZONE_SETTING_POPUP:Ljava/lang/String; = "MAUNAL_TIMEZONE_SETTING_POPUP"

.field public static final KEY_MAX_USER_DATA_BYTES_EX:Ljava/lang/String; = "max_user_data_bytes_ex"

.field public static final KEY_MAX_USER_DATA_SEPTETS_EX:Ljava/lang/String; = "max_user_data_septets_ex"

.field public static final KEY_MDN_SYNC_VMS_NUMBER:Ljava/lang/String; = "change_mdn_sync_vms"

.field public static final KEY_MEGAFON_VOICEMAIL_TYPE:Ljava/lang/String; = "voicemailWaitingIndication_MEGAFON"

.field public static final KEY_MMI_CODE_FOR_NEXT_I:Ljava/lang/String; = "nwservice"

.field public static final KEY_MODIFY_CHECK_CONFIRM_POPUP_CONCAT_MESSAGE_MO:Ljava/lang/String; = "modify_check_confirm_popup_concat_message_mo"

.field public static final KEY_MO_SMS_WITH_1XCSFB:Ljava/lang/String; = "mo_sms_with_1xcsfb"

.field public static final KEY_MWI_ONLY_NOTIFY:Ljava/lang/String; = "mwi_only_notify"

.field public static final KEY_NETWORK_MODE_CHANGE_IN_RIL:Ljava/lang/String; = "network_mode_change_in_ril"

.field public static final KEY_NITZ_WAITING_TIMEOUT:Ljava/lang/String; = "NITZ_WAITING_TIMEOUT"

.field public static final KEY_NOTI_FOR_ALL_USER:Ljava/lang/String; = "noti_for_all_user"

.field public static final KEY_NOT_DISABLE_DATA_CALL_IN_EMERGENCY_CALL:Ljava/lang/String; = "NotDisableDataCallInEmergencyCall"

.field public static final KEY_NOT_ROAMING_COUNTRY:Ljava/lang/String; = "not_roaming_country"

.field public static final KEY_NOT_SEND_SMS_BEFORE_OTA_SERVICE:Ljava/lang/String; = "not_send_sms_before_ota_service"

.field public static final KEY_NOT_SEND_SMS_IN_CALL:Ljava/lang/String; = "not_send_sms_in_call"

.field public static final KEY_NOT_SUPPORT_OTA_SP_NUMBER:Ljava/lang/String; = "NotSupportOtaSpNumber"

.field public static final KEY_NOT_SUPPORT_PAGINATION_INDICATOR:Ljava/lang/String; = "remove_pagination_indicator"

.field public static final KEY_NOT_SUPPORT_SMS_NBPCD:Ljava/lang/String; = "not_support_sms_nbpcd"

.field public static final KEY_OEM_RAD_DIALER_POPUP:Ljava/lang/String; = "OEM_RAD_DIALER_POPUP"

.field public static final KEY_OPERATOR_MESSAGE:Ljava/lang/String; = "OperatorMessage"

.field public static final KEY_PARSE_PDU_TWICE:Ljava/lang/String; = "parse_pdu_twice"

.field public static final KEY_PRIVATE_LOG_LEVEL:Ljava/lang/String; = "block_private_log_level"

.field public static final KEY_PROPERTY_ECC_HIDDEN_MENU:Ljava/lang/String; = "persist.service.ecc.hiddenmenu"

.field public static final KEY_PUBLIC_SMS:Ljava/lang/String; = "public_sms"

.field public static final KEY_REJECT_NEW_SMS_ENCRYPTING:Ljava/lang/String; = "reject_new_sms_encrypting"

.field public static final KEY_RELEASE_OPERATOR_MCC_MNC:Ljava/lang/String; = "releaseOperatorMccMnc"

.field public static final KEY_REPLY_ADDRESS:Ljava/lang/String; = "replyAddress"

.field public static final KEY_RETRY_TO_CB_EANBLE:Ljava/lang/String; = "retry_to_enable_cb"

.field public static final KEY_REVISE_INVALID_CDMA_WAPPUSH_PDU:Ljava/lang/String; = "revise_invalid_cdma_wappush_pdu"

.field public static final KEY_RINGBACKTONE:Ljava/lang/String; = "RingBackTone"

.field public static final KEY_ROAMING_NETWORK:Ljava/lang/String; = "roaming_network"

.field public static final KEY_RO_CDMA_OPERATOR_ALPHA:Ljava/lang/String; = "ro_cdma_operator_alpha"

.field public static final KEY_SAFE_MMS_NOTI:Ljava/lang/String; = "SafeSMSforMMSNoti"

.field public static final KEY_SAFE_SMS:Ljava/lang/String; = "SafeSMS"

.field public static final KEY_SAVE_NETWORK_OPERATOR_SHORT_NAME:Ljava/lang/String; = "SAVE_NETWORK_OPERATOR_SHORT_NAME"

.field public static final KEY_SAVE_USIM_3GPP_CDMA:Ljava/lang/String; = "save_usim_3gpp_in_cdma"

.field public static final KEY_SELF_REGISTRATION_WITH_SMS:Ljava/lang/String; = "self_registration_with_sms"

.field public static final KEY_SENDINTENT_FAILURE:Ljava/lang/String; = "SendIntentFailure"

.field public static final KEY_SEND_2_SEGMENT_SMS_VIA_SMS_NOT_EMS:Ljava/lang/String; = "send_2_segment_sms_via_sms_not_ems"

.field public static final KEY_SEND_MY_NUMBER_DEFAULT_VALUE:Ljava/lang/String; = "SendMyNumberInformation"

.field public static final KEY_SET_CBACTIVATION:Ljava/lang/String; = "setCBActivation_Intel"

.field public static final KEY_SET_CLIR_OPTION_BY_CALL_SETTING:Ljava/lang/String; = "set_clir_option_by_call_setting"

.field public static final KEY_SET_NULL_SCADDRESS:Ljava/lang/String; = "setNullSCAddress_Intel"

.field public static final KEY_SET_SMSMO_DOMAIN:Ljava/lang/String; = "setSMSMoDomain_Intel"

.field public static final KEY_SHOW_MDN_FOR_VMS:Ljava/lang/String; = "show_Mdn_For_VMS"

.field public static final KEY_SHOW_NETWORK_NAME_WHEN_MANUAL_NETWORK_SETTING_FAIL:Ljava/lang/String; = "SHOW_NETWORK_NAME_WHEN_MANUAL_NETWORK_SETTING_FAIL"

.field public static final KEY_SIM_MO_UNKNOWN_TIME:Ljava/lang/String; = "sim_mo_unknown_time"

.field public static final KEY_SKT_COMMON_PUSH:Ljava/lang/String; = "SKTCommonPush"

.field public static final KEY_SKT_DOD:Ljava/lang/String; = "SKT_DOD"

.field public static final KEY_SKT_FIND_FRIENDS:Ljava/lang/String; = "SKTfindFriends"

.field public static final KEY_SKT_SPAM_MSG:Ljava/lang/String; = "SKTspam"

.field public static final KEY_SKT_URLCALLBACK:Ljava/lang/String; = "SKTUrlCallback"

.field public static final KEY_SMMA_BOOTUP:Ljava/lang/String; = "SMMAWhenBootUp"

.field public static final KEY_SMS_BLOCK_ON_TDLTE_ONLY:Ljava/lang/String; = "sms_block_on_tdlte_only"

.field public static final KEY_SMS_DCM_PUSH_CHECK_SECURITY:Ljava/lang/String; = "dcm_push_check_security"

.field public static final KEY_SMS_DCM_VOICEMAIL_RECEIVE_MEMORYFULL:Ljava/lang/String; = "dcm_voicemail_receive_memoryfull"

.field public static final KEY_SMS_GCF_CONFIG:Ljava/lang/String; = "sms_gcf_config"

.field public static final KEY_SMS_OVER_IMS_IN_AP:Ljava/lang/String; = "sms_over_ims_in_ap"

.field public static final KEY_SMS_OVER_IMS_IN_LTE_SINGLE_MODE:Ljava/lang/String; = "sms_over_ims_in_lte_single_mode"

.field public static final KEY_SMS_OVER_LGIMS:Ljava/lang/String; = "sms_over_lgims"

.field public static final KEY_SMS_PERMISSION_TRACKING:Ljava/lang/String; = "sms_permission_tracking"

.field public static final KEY_SMS_SEPARATE_USIMBOX:Ljava/lang/String; = "sms_separate_usimbox"

.field public static final KEY_SMS_SHORT_CODE_EXTENTION:Ljava/lang/String; = "sms_short_code_extention"

.field public static final KEY_SMS_TIMEZONE_EXCEPTION_HANDLING:Ljava/lang/String; = "TimeZoneExceptionHandling"

.field public static final KEY_SOURCE_PORT_SELF_REGISTRATION_WITH_SMS:Ljava/lang/String; = "source_port_self_registration_with_sms"

.field public static final KEY_SPAM_MSG:Ljava/lang/String; = "spam"

.field public static final KEY_SPECIAL_MSG:Ljava/lang/String; = "specialMessage"

.field public static final KEY_SPRINT_EHRPD_FORCED:Ljava/lang/String; = "sprint_ehrpd_forced"

.field public static final KEY_SPRINT_HDR_ROAMING:Ljava/lang/String; = "sprint_hdr_roaming"

.field public static final KEY_SPRINT_LOCATION_SPEC:Ljava/lang/String; = "sprint_location_spec"

.field public static final KEY_SPRINT_NOT_SUPPORT_REASSEMBLY_SETTING_MENU:Ljava/lang/String; = "sprint_not_support_reassembly_sms_setting_menu"

.field public static final KEY_SPRINT_SUPPORT_SMS_REASSEMBLY:Ljava/lang/String; = "sprint_reassembly_sms"

.field public static final KEY_SPRINT_SUPPORT_SMS_SEGMENTATION:Ljava/lang/String; = "sprint_segment_sms"

.field public static final KEY_SPTS_MSG:Ljava/lang/String; = "spts_msg"

.field public static final KEY_STAR67_DIAL:Ljava/lang/String; = "star67_dial"

.field public static final KEY_SUPPORT_7BIT_ASCII_EMS:Ljava/lang/String; = "support_7bit_ascii_ems"

.field public static final KEY_SUPPORT_ASSISTED_DIALING:Ljava/lang/String; = "support_assisted_dialing"

.field public static final KEY_SUPPORT_DATA_ONLY_DEVICE:Ljava/lang/String; = "data_only_device"

.field public static final KEY_SUPPORT_E911_FOR_VOLTE:Ljava/lang/String; = "SUPPORT_E911_FOR_VOLTE"

.field public static final KEY_SUPPORT_ECM_FOR_GSM:Ljava/lang/String; = "support_emergency_callback_mode_for_gsm"

.field public static final KEY_SUPPORT_EMERGENCY_FILTER:Ljava/lang/String; = "emergency_alert_filtering"

.field public static final KEY_SUPPORT_EMOJI_CONCAT_MESSAGE:Ljava/lang/String; = "support_emoji_in_concat_message"

.field public static final KEY_SUPPORT_ENHANCED_VOICECALL:Ljava/lang/String; = "SUPPORT_ENHANCED_VOICECALL"

.field public static final KEY_SUPPORT_FIXTIMEZONE_BY_MCC:Ljava/lang/String; = "fix_timezone_by_mcc"

.field public static final KEY_SUPPORT_HFPCALL_ONLY:Ljava/lang/String; = "support_hfpcall_only"

.field public static final KEY_SUPPORT_INFO_FOR_IMS:Ljava/lang/String; = "SUPPORT_INFO_FOR_IMS"

.field public static final KEY_SUPPORT_KDDI_CDMA_WAP_PUSH:Ljava/lang/String; = "kddi_cdma_wap_push"

.field public static final KEY_SUPPORT_KDDI_DAN:Ljava/lang/String; = "kddi_domain_notification"

.field public static final KEY_SUPPORT_LEGACY_VVM_NOT_SAVE:Ljava/lang/String; = "legacy_vvm_not_save"

.field public static final KEY_SUPPORT_LOG_RF_INFO:Ljava/lang/String; = "SUPPORT_LOG_RF_INFO"

.field public static final KEY_SUPPORT_LTE_BAND_INFO:Ljava/lang/String; = "SUPPORT_LTE_BAND_INFO"

.field public static final KEY_SUPPORT_MULTI_IMSI:Ljava/lang/String; = "support_multi_imsi"

.field public static final KEY_SUPPORT_NETWORK_CHANGE_AUTO_RETRY:Ljava/lang/String; = "support_network_change_auto_retry"

.field public static final KEY_SUPPORT_NETWORK_DUPLICATE_MESSAGE:Ljava/lang/String; = "network_duplicate_message"

.field public static final KEY_SUPPORT_NOT_HANDLE_BC_SMS:Ljava/lang/String; = "not_handle_bc_sms"

.field public static final KEY_SUPPORT_SEND_BURST_DTMF:Ljava/lang/String; = "support_send_burst_dtmf"

.field public static final KEY_SUPPORT_SEND_ROAMING_INFO_TO_MODEM:Ljava/lang/String; = "SUPPORT_SEND_ROAMING_INFO_TO_MODEM"

.field public static final KEY_SUPPORT_SHOULD_WRITE_MESSAGES_FOR_VZW:Ljava/lang/String; = "should_write_messages_for_vzw"

.field public static final KEY_SUPPORT_SMART_DIALING:Ljava/lang/String; = "support_smart_dialing"

.field public static final KEY_SUPPORT_SMS_DAN_SEND:Ljava/lang/String; = "sms_dan_send"

.field public static final KEY_SUPPORT_SMS_MO_IN_ECBM:Ljava/lang/String; = "support_sms_mo_in_ecbm"

.field public static final KEY_SUPPORT_SMS_OVER_PS:Ljava/lang/String; = "support_sms_over_ps"

.field public static final KEY_SUPPORT_SPRINT_LOCK_AND_WIPE:Ljava/lang/String; = "support_sprint_lock_and_wipe"

.field public static final KEY_SUPPORT_SPRINT_N11:Ljava/lang/String; = "support_sprint_n11"

.field public static final KEY_SUPPORT_SPRINT_SMS_ROAMING_GUARD:Ljava/lang/String; = "support_sprint_sms_roaming_guard"

.field public static final KEY_SUPPORT_SPRINT_VVM:Ljava/lang/String; = "support_sprint_vvm"

.field public static final KEY_SUPPORT_SRLTE:Ljava/lang/String; = "support_srlte"

.field public static final KEY_SUPPORT_SRVCC:Ljava/lang/String; = "support_srvcc"

.field public static final KEY_SUPPORT_SRVCC_CONF:Ljava/lang/String; = "support_srvcc_conf"

.field public static final KEY_SUPPORT_SVLTE:Ljava/lang/String; = "support_svlte"

.field public static final KEY_SUPPORT_TRF_BASED_ATT:Ljava/lang/String; = "trf_based_att"

.field public static final KEY_SUPPORT_TRF_BASED_VZW:Ljava/lang/String; = "trf_based_vzw"

.field public static final KEY_SUPPORT_UPDATE_DEVICE_INFO:Ljava/lang/String; = "SUPPORT_UPDATE_DEVICE_INFO"

.field public static final KEY_SUPPORT_USIM_COMPATIBILITY:Ljava/lang/String; = "support_usim_compatibility"

.field public static final KEY_SUPPORT_USSD_ONLY:Ljava/lang/String; = "support_USSD_only"

.field public static final KEY_SUPPORT_VOLTE_CALL_WAITING:Ljava/lang/String; = "support_volte_call_waiting"

.field public static final KEY_SUPPORT_VOLTE_IF:Ljava/lang/String; = "support_volte_if"

.field public static final KEY_SUPPORT_VVM3_WAP_PUSH:Ljava/lang/String; = "vvm3_wap_push"

.field public static final KEY_SUPPORT_VZW_LOS_UPGRADE:Ljava/lang/String; = "support_vzw_Los_upgrade"

.field public static final KEY_SUPPORT_WIFI_OFF_EMERGENCY:Ljava/lang/String; = "wifi_off_emergency_received"

.field public static final KEY_TMUS_NO_PREMIUM_SMS_VVM:Ljava/lang/String; = "tmus_no_premium_sms_vvm"

.field public static final KEY_TMUS_WHITEPAGES_NAMEID:Ljava/lang/String; = "tmus_whitepages_nameid"

.field public static final KEY_TRF_NO_PREMIUM_SMS:Ljava/lang/String; = "trf_no_premium_sms"

.field public static final KEY_UICC_CSIM:Ljava/lang/String; = "uicc_csim"

.field public static final KEY_USE_ORIGINAL_TELEPHONY_PROVIDER:Ljava/lang/String; = "use_original_telephony_provider"

.field public static final KEY_USE_UPDATE_FOR_COPY2SIM:Ljava/lang/String; = "use_update_for_copy2sim"

.field public static final KEY_USIM_PERSONAL_LOCK:Ljava/lang/String; = "USIM_PERSONAL_LOCK"

.field public static final KEY_UT_INTERFACE:Ljava/lang/String; = "ut_interface"

.field public static final KEY_VALUE_OF_NUMBER_UNAUTHORIZED_SMS_USAGE:Ljava/lang/String; = "limit_number_unauthorized_SMS_usage"

.field public static final KEY_VIVO_UCS2GSM_ENCODING:Ljava/lang/String; = "VIVO_UCS2GSM_Encoding"

.field public static final KEY_VMN_COUNT_HEX_CONVERSION:Ljava/lang/String; = "vmn_count_hex_conversion"

.field public static final KEY_VOICE_CODEC_INDICATOR:Ljava/lang/String; = "speech_codec_ind"

.field public static final KEY_VZW_CDMA_URGENT_VMWI:Ljava/lang/String; = "cdma_urgent_vmwi"

.field public static final KEY_VZW_ERI:Ljava/lang/String; = "vzw_eri"

.field public static final KEY_VZW_GFIT:Ljava/lang/String; = "vzw_gfit"

.field public static final KEY_VZW_MODEM_DATA_LOGGING:Ljava/lang/String; = "vzw_modem_data_logging"

.field public static final KEY_VZW_NETWORK_NAME:Ljava/lang/String; = "vzw_network_name"

.field public static final KEY_VZW_OTA:Ljava/lang/String; = "ota_for_vzw"

.field public static final KEY_VZW_SMS_FROMVTEXT:Ljava/lang/String; = "vzw_sms_fromvtext"

.field public static final KEY_VZW_SMS_RETRY_SCHEME:Ljava/lang/String; = "vzw_sms_retry_scheme"

.field public static final KEY_VZW_SNC_EMAIL_SMS:Ljava/lang/String; = "vzw_snc_email_sms"

.field public static final REPARCE_WAP_PUSH_INDEX:Ljava/lang/String; = "reparse_wap_push_index"

.field public static final VVM_INTENT_ACTION_CHANGE:Ljava/lang/String; = "vvm_intent_action_change"
