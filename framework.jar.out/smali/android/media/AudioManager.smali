.class public Landroid/media/AudioManager;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioManager$FocusEventHandlerDelegate;,
        Landroid/media/AudioManager$OnAudioFocusChangeListener;
    }
.end annotation


# static fields
.field public static final ACTION_AUDIO_BECOMING_NOISY:Ljava/lang/String; = "android.media.AUDIO_BECOMING_NOISY"

.field public static final ACTION_SCO_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.media.SCO_AUDIO_STATE_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SCO_AUDIO_STATE_UPDATED:Ljava/lang/String; = "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

.field public static final ADJUST_LOWER:I = -0x1

.field public static final ADJUST_RAISE:I = 0x1

.field public static final ADJUST_SAME:I = 0x0

.field public static final AUDIOFOCUS_GAIN:I = 0x1

.field public static final AUDIOFOCUS_GAIN_TRANSIENT:I = 0x2

.field public static final AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:I = 0x3

.field public static final AUDIOFOCUS_LOSS:I = -0x1

.field public static final AUDIOFOCUS_LOSS_TRANSIENT:I = -0x2

.field public static final AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK:I = -0x3

.field public static final AUDIOFOCUS_REQUEST_FAILED:I = 0x0

.field public static final AUDIOFOCUS_REQUEST_GRANTED:I = 0x1

.field public static final DEFAULT_STREAM_VOLUME:[I = null

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final DEVICE_OUT_DEFAULT:I = 0x8000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final DEVICE_OUT_EARPIECE:I = 0x1

.field public static final DEVICE_OUT_SPEAKER:I = 0x2

.field public static final DEVICE_OUT_USB_ACCESSORY:I = 0x2000

.field public static final DEVICE_OUT_USB_DEVICE:I = 0x4000

.field public static final DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final EXTRA_MASTER_VOLUME_MUTED:Ljava/lang/String; = "android.media.EXTRA_MASTER_VOLUME_MUTED"

.field public static final EXTRA_MASTER_VOLUME_VALUE:Ljava/lang/String; = "android.media.EXTRA_MASTER_VOLUME_VALUE"

.field public static final EXTRA_PREV_MASTER_VOLUME_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_MASTER_VOLUME_VALUE"

.field public static final EXTRA_PREV_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

.field public static final EXTRA_REMOTE_CONTROL_CLIENT_GENERATION:Ljava/lang/String; = "android.media.EXTRA_REMOTE_CONTROL_CLIENT_GENERATION"

.field public static final EXTRA_REMOTE_CONTROL_CLIENT_INFO_CHANGED:Ljava/lang/String; = "android.media.EXTRA_REMOTE_CONTROL_CLIENT_INFO_CHANGED"

.field public static final EXTRA_REMOTE_CONTROL_CLIENT_NAME:Ljava/lang/String; = "android.media.EXTRA_REMOTE_CONTROL_CLIENT_NAME"

.field public static final EXTRA_REMOTE_CONTROL_EVENT_RECEIVER:Ljava/lang/String; = "android.media.EXTRA_REMOTE_CONTROL_EVENT_RECEIVER"

.field public static final EXTRA_RINGER_MODE:Ljava/lang/String; = "android.media.EXTRA_RINGER_MODE"

.field public static final EXTRA_SCO_AUDIO_PREVIOUS_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

.field public static final EXTRA_SCO_AUDIO_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_STATE"

.field public static final EXTRA_VIBRATE_SETTING:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_SETTING"

.field public static final EXTRA_VIBRATE_TYPE:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_TYPE"

.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field public static final FLAG_ALLOW_RINGER_MODES:I = 0x2

.field public static final FLAG_PLAY_SOUND:I = 0x4

.field public static final FLAG_REMOVE_SOUND_AND_VIBRATE:I = 0x8

.field public static final FLAG_SHOW_UI:I = 0x1

.field public static final FLAG_VIBRATE:I = 0x10

.field public static final FX_FOCUS_NAVIGATION_DOWN:I = 0x2

.field public static final FX_FOCUS_NAVIGATION_LEFT:I = 0x3

.field public static final FX_FOCUS_NAVIGATION_RIGHT:I = 0x4

.field public static final FX_FOCUS_NAVIGATION_UP:I = 0x1

.field public static final FX_KEYPRESS_DELETE:I = 0x7

.field public static final FX_KEYPRESS_RETURN:I = 0x8

.field public static final FX_KEYPRESS_SPACEBAR:I = 0x6

.field public static final FX_KEYPRESS_STANDARD:I = 0x5

.field public static final FX_KEY_CLICK:I = 0x0

.field public static final MASTER_MUTE_CHANGED_ACTION:Ljava/lang/String; = "android.media.MASTER_MUTE_CHANGED_ACTION"

.field public static final MASTER_VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.MASTER_VOLUME_CHANGED_ACTION"

.field public static final MODE_CURRENT:I = -0x1

.field public static final MODE_INVALID:I = -0x2

.field public static final MODE_IN_CALL:I = 0x2

.field public static final MODE_IN_COMMUNICATION:I = 0x3

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RINGTONE:I = 0x1

.field public static final NUM_SOUND_EFFECTS:I = 0x9

.field public static final NUM_STREAMS:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REMOTE_CONTROL_CLIENT_CHANGED:Ljava/lang/String; = "android.media.REMOTE_CONTROL_CLIENT_CHANGED"

.field public static final RINGER_MODE_CHANGED_ACTION:Ljava/lang/String; = "android.media.RINGER_MODE_CHANGED"

.field private static final RINGER_MODE_MAX:I = 0x2

.field public static final RINGER_MODE_NORMAL:I = 0x2

.field public static final RINGER_MODE_SILENT:I = 0x0

.field public static final RINGER_MODE_VIBRATE:I = 0x1

.field public static final ROUTE_ALL:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_A2DP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_SCO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_EARPIECE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_HEADSET:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_SPEAKER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCO_AUDIO_STATE_CONNECTED:I = 0x1

.field public static final SCO_AUDIO_STATE_CONNECTING:I = 0x2

.field public static final SCO_AUDIO_STATE_DISCONNECTED:I = 0x0

.field public static final SCO_AUDIO_STATE_ERROR:I = -0x1

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_DTMF:I = 0x8

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SYSTEM:I = 0x1

.field public static final STREAM_SYSTEM_ENFORCED:I = 0x7

.field public static final STREAM_TTS:I = 0x9

.field public static final STREAM_VOICE_CALL:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field public static final USE_DEFAULT_STREAM_TYPE:I = -0x80000000

.field public static final VIBRATE_SETTING_CHANGED_ACTION:Ljava/lang/String; = "android.media.VIBRATE_SETTING_CHANGED"

.field public static final VIBRATE_SETTING_OFF:I = 0x0

.field public static final VIBRATE_SETTING_ON:I = 0x1

.field public static final VIBRATE_SETTING_ONLY_SILENT:I = 0x2

.field public static final VIBRATE_TYPE_NOTIFICATION:I = 0x1

.field public static final VIBRATE_TYPE_RINGER:I = 0x0

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field private static sService:Landroid/media/IAudioService;

.field private static shouldSynToTD:Z

.field private static telephonyMgr_:Landroid/telephony/TelephonyManager;


# instance fields
.field private final mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field private final mAudioFocusEventHandlerDelegate:Landroid/media/AudioManager$FocusEventHandlerDelegate;

.field private final mAudioFocusIdListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFocusListenerLock:Ljava/lang/Object;

.field private final mICallBack:Landroid/os/IBinder;

.field private final mUseMasterVolume:Z

.field private mVolumeKeyUpTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "AudioManager"

    sput-object v0, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    .line 230
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    .line 416
    const/4 v0, 0x0

    sput-boolean v0, Landroid/media/AudioManager;->shouldSynToTD:Z

    return-void

    .line 230
    nop

    :array_0
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 517
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1906
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    .line 1912
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    .line 1921
    new-instance v0, Landroid/media/AudioManager$FocusEventHandlerDelegate;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$FocusEventHandlerDelegate;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusEventHandlerDelegate:Landroid/media/AudioManager$FocusEventHandlerDelegate;

    .line 1960
    new-instance v0, Landroid/media/AudioManager$1;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$1;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 2385
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    .line 518
    iput-object p1, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    .line 519
    iget-object v0, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    .line 521
    return-void
.end method

.method static synthetic access$000(Landroid/media/AudioManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/AudioManager;Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->findFocusListener(Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/AudioManager;)Landroid/media/AudioManager$FocusEventHandlerDelegate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusEventHandlerDelegate:Landroid/media/AudioManager$FocusEventHandlerDelegate;

    return-object v0
.end method

.method public static applyAudioPathToPhone(I)V
    .locals 2
    .parameter "path"

    .prologue
    .line 457
    const-string v0, "hanguojun"

    const-string v1, "[hanguojun]GetGsmPhoneSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-static {}, Landroid/media/AudioManager;->getTelephonyMgr()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->setAudioPath(I)Z

    .line 460
    return-void
.end method

.method private findFocusListener(Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter "id"

    .prologue
    .line 1915
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method private getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;
    .locals 3
    .parameter "l"

    .prologue
    .line 1970
    if-nez p1, :cond_0

    .line 1971
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1973
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getPathValue(ZZ)I
    .locals 1
    .parameter "bluetoothOn"
    .parameter "headsetOn"

    .prologue
    .line 427
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 429
    :goto_0
    return v0

    .line 428
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 429
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getPathValuefort98(ZZ)I
    .locals 1
    .parameter "bluetoothOn"
    .parameter "headsetOn"

    .prologue
    .line 433
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 435
    :goto_0
    return v0

    .line 434
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 435
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private static getService()Landroid/media/IAudioService;
    .locals 2

    .prologue
    .line 525
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    if-eqz v1, :cond_0

    .line 526
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    .line 530
    .local v0, b:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 528
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 529
    .restart local v0       #b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    .line 530
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    goto :goto_0
.end method

.method private static getSpeakerPathValue()I
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x3

    return v0
.end method

.method public static getTelephonyMgr()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 420
    sget-object v0, Landroid/media/AudioManager;->telephonyMgr_:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/media/AudioManager;->telephonyMgr_:Landroid/telephony/TelephonyManager;

    .line 422
    :goto_0
    return-object v0

    .line 421
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    sput-object v0, Landroid/media/AudioManager;->telephonyMgr_:Landroid/telephony/TelephonyManager;

    .line 422
    sget-object v0, Landroid/media/AudioManager;->telephonyMgr_:Landroid/telephony/TelephonyManager;

    goto :goto_0
.end method

.method public static isValidRingerMode(I)Z
    .locals 1
    .parameter "ringerMode"

    .prologue
    .line 761
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-le p0, v0, :cond_1

    .line 762
    :cond_0
    const/4 v0, 0x0

    .line 764
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static onBluetoothScoChanged(Z)V
    .locals 5
    .parameter "on"

    .prologue
    .line 501
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 502
    .local v2, service:Landroid/media/IAudioService;
    const/4 v0, 0x0

    .line 504
    .local v0, WiredHeadsetOn:Z
    :try_start_0
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onSpeakerStatusChanged  "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-interface {v2}, Landroid/media/IAudioService;->isWiredHeadsetOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 510
    :goto_0
    invoke-static {p0, v0}, Landroid/media/AudioManager;->onOuputEquipmentStatusChanged(ZZ)V

    .line 512
    return-void

    .line 506
    :catch_0
    move-exception v1

    .line 507
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in restoreWiredHeadsetState"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static onOuputEquipmentStatusChanged(ZZ)V
    .locals 2
    .parameter "bluetoothOn"
    .parameter "headsetOn"

    .prologue
    .line 445
    const-string/jumbo v0, "yinyunpu"

    const-string v1, "[yinyunpu ]onOuputEquipmentStatusChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-static {p0, p1}, Landroid/media/AudioManager;->getPathValue(ZZ)I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioManager;->applyAudioPathToPhone(I)V

    .line 447
    return-void
.end method

.method public static onOuputEquipmentStatusChangedfort98(ZZ)V
    .locals 2
    .parameter "bluetoothOn"
    .parameter "headsetOn"

    .prologue
    .line 450
    const-string/jumbo v0, "yinyunpu"

    const-string v1, "[yinyunpu ]onOuputEquipmentStatusChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-static {p0, p1}, Landroid/media/AudioManager;->getPathValuefort98(ZZ)I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioManager;->applyAudioPathToPhone(I)V

    .line 452
    return-void
.end method

.method private querySoundEffectsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1808
    iget-object v1, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sound_effects_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 6
    .parameter "l"

    .prologue
    .line 2093
    const/4 v2, 0x0

    .line 2094
    .local v2, status:I
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 2095
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2097
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/media/IAudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2102
    :goto_0
    return v2

    .line 2099
    :catch_0
    move-exception v0

    .line 2100
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call abandonAudioFocus() on AudioService due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public abandonAudioFocusForCall()V
    .locals 5

    .prologue
    .line 2079
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2081
    .local v1, service:Landroid/media/IAudioService;
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-interface {v1, v2, v3}, Landroid/media/IAudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2085
    :goto_0
    return-void

    .line 2082
    :catch_0
    move-exception v0

    .line 2083
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t call abandonAudioFocusForCall() on AudioService due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public adjustLocalOrRemoteStreamVolume(II)V
    .locals 5
    .parameter "streamType"
    .parameter "direction"

    .prologue
    .line 1638
    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    .line 1639
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustLocalOrRemoteStreamVolume() doesn\'t support stream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1643
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->adjustLocalOrRemoteStreamVolume(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1647
    :goto_0
    return-void

    .line 1644
    :catch_0
    move-exception v0

    .line 1645
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in adjustLocalOrRemoteStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public adjustMasterVolume(II)V
    .locals 4
    .parameter "steps"
    .parameter "flags"

    .prologue
    .line 727
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 729
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->adjustMasterVolume(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    :goto_0
    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in adjustMasterVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public adjustStreamVolume(III)V
    .locals 4
    .parameter "streamType"
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 645
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 647
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_0

    .line 648
    invoke-interface {v1, p2, p3}, Landroid/media/IAudioService;->adjustMasterVolume(II)V

    .line 655
    :goto_0
    return-void

    .line 650
    :cond_0
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->adjustStreamVolume(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 652
    :catch_0
    move-exception v0

    .line 653
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in adjustStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public adjustSuggestedStreamVolume(III)V
    .locals 4
    .parameter "direction"
    .parameter "suggestedStreamType"
    .parameter "flags"

    .prologue
    .line 705
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 707
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_0

    .line 708
    invoke-interface {v1, p1, p3}, Landroid/media/IAudioService;->adjustMasterVolume(II)V

    .line 715
    :goto_0
    return-void

    .line 710
    :cond_0
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 712
    :catch_0
    move-exception v0

    .line 713
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in adjustSuggestedStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public adjustVolume(II)V
    .locals 4
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 675
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 677
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_0

    .line 678
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->adjustMasterVolume(II)V

    .line 685
    :goto_0
    return-void

    .line 680
    :cond_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->adjustVolume(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in adjustVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public forceVolumeControlStream(I)V
    .locals 4
    .parameter "streamType"

    .prologue
    .line 1071
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1073
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->forceVolumeControlStream(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1077
    :goto_0
    return-void

    .line 1074
    :catch_0
    move-exception v0

    .line 1075
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in forceVolumeControlStream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDevicesForStream(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 2499
    packed-switch p1, :pswitch_data_0

    .line 2509
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2507
    :pswitch_1
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    goto :goto_0

    .line 2499
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getLastAudibleMasterVolume()I
    .locals 4

    .prologue
    .line 927
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 929
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getLastAudibleMasterVolume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 932
    :goto_0
    return v2

    .line 930
    :catch_0
    move-exception v0

    .line 931
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getLastAudibleMasterVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 932
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 4
    .parameter "streamType"

    .prologue
    .line 816
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 818
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_0

    .line 819
    invoke-interface {v1}, Landroid/media/IAudioService;->getLastAudibleMasterVolume()I

    move-result v2

    .line 825
    :goto_0
    return v2

    .line 821
    :cond_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getLastAudibleStreamVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getLastAudibleStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 825
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMasterMaxVolume()I
    .locals 4

    .prologue
    .line 896
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 898
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getMasterMaxVolume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 901
    :goto_0
    return v2

    .line 899
    :catch_0
    move-exception v0

    .line 900
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getMasterMaxVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 901
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMasterStreamType()I
    .locals 4

    .prologue
    .line 835
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 837
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getMasterStreamType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 840
    :goto_0
    return v2

    .line 838
    :catch_0
    move-exception v0

    .line 839
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getMasterStreamType"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 840
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public getMasterVolume()I
    .locals 4

    .prologue
    .line 912
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 914
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getMasterVolume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 917
    :goto_0
    return v2

    .line 915
    :catch_0
    move-exception v0

    .line 916
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getMasterVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 917
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMode()I
    .locals 4

    .prologue
    .line 1499
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1501
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1504
    :goto_0
    return v2

    .line 1502
    :catch_0
    move-exception v0

    .line 1503
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1504
    const/4 v2, -0x2

    goto :goto_0
.end method

.method public getParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "keys"

    .prologue
    .line 1687
    invoke-static {p1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRingerMode()I
    .locals 4

    .prologue
    .line 743
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 745
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getRingerMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 748
    :goto_0
    return v2

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getRingerMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 748
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .locals 2

    .prologue
    .line 2552
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2554
    :goto_0
    return-object v1

    .line 2553
    :catch_0
    move-exception v0

    .line 2554
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRouting(I)I
    .locals 1
    .parameter "mode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1608
    const/4 v0, -0x1

    return v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 4
    .parameter "streamType"

    .prologue
    .line 775
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 777
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_0

    .line 778
    invoke-interface {v1}, Landroid/media/IAudioService;->getMasterMaxVolume()I

    move-result v2

    .line 784
    :goto_0
    return v2

    .line 780
    :cond_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 782
    :catch_0
    move-exception v0

    .line 783
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getStreamMaxVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 784
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getStreamVolume(I)I
    .locals 4
    .parameter "streamType"

    .prologue
    .line 797
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 799
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_0

    .line 800
    invoke-interface {v1}, Landroid/media/IAudioService;->getMasterVolume()I

    move-result v2

    .line 806
    :goto_0
    return v2

    .line 802
    :cond_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 804
    :catch_0
    move-exception v0

    .line 805
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 806
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getVibrateSetting(I)I
    .locals 4
    .parameter "vibrateType"

    .prologue
    .line 1126
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1128
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getVibrateSetting(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1131
    :goto_0
    return v2

    .line 1129
    :catch_0
    move-exception v0

    .line 1130
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getVibrateSetting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1131
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public handleKeyDown(Landroid/view/KeyEvent;I)V
    .locals 6
    .parameter "event"
    .parameter "stream"

    .prologue
    const/16 v5, 0x18

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 563
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 564
    .local v1, keyCode:I
    sparse-switch v1, :sswitch_data_0

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 571
    :sswitch_0
    const/16 v0, 0x11

    .line 572
    .local v0, flags:I
    iget-boolean v4, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v4, :cond_2

    .line 573
    if-ne v1, v5, :cond_1

    :goto_1
    invoke-virtual {p0, v2, v0}, Landroid/media/AudioManager;->adjustMasterVolume(II)V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 579
    :cond_2
    if-ne v1, v5, :cond_3

    :goto_2
    invoke-virtual {p0, v2, p2, v0}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_2

    .line 588
    .end local v0           #flags:I
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 589
    iget-boolean v3, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v3, :cond_0

    .line 590
    invoke-virtual {p0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v3

    if-nez v3, :cond_4

    :goto_3
    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->setMasterMute(Z)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 564
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_1
    .end sparse-switch
.end method

.method public handleKeyUp(Landroid/view/KeyEvent;I)V
    .locals 4
    .parameter "event"
    .parameter "stream"

    .prologue
    const/4 v3, 0x0

    .line 603
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 604
    .local v1, keyCode:I
    packed-switch v1, :pswitch_data_0

    .line 626
    :goto_0
    return-void

    .line 611
    :pswitch_0
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_1

    .line 612
    const/16 v2, 0x19

    if-ne v1, v2, :cond_0

    .line 613
    const/4 v2, 0x4

    invoke-virtual {p0, v3, v2}, Landroid/media/AudioManager;->adjustMasterVolume(II)V

    .line 623
    :cond_0
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/media/AudioManager;->mVolumeKeyUpTime:J

    goto :goto_0

    .line 616
    :cond_1
    const/4 v0, 0x4

    .line 617
    .local v0, flags:I
    invoke-virtual {p0, v3, p2, v0}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_1

    .line 604
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isBluetoothA2dpOn()Z
    .locals 2

    .prologue
    .line 1407
    const/16 v0, 0x80

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1409
    const/4 v0, 0x0

    .line 1411
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isBluetoothScoAvailableOffCall()Z
    .locals 2

    .prologue
    .line 1284
    iget-object v0, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isBluetoothScoOn()Z
    .locals 4

    .prologue
    .line 1383
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1385
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->isBluetoothScoOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1388
    :goto_0
    return v2

    .line 1386
    :catch_0
    move-exception v0

    .line 1387
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isBluetoothScoOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1388
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isBroadcomFMActive()Z
    .locals 5

    .prologue
    .line 1621
    const/4 v1, 0x0

    .line 1622
    .local v1, ret:Z
    invoke-static {}, Lcom/broadcom/bt/service/framework/PowerManager;->getProxy()Lcom/broadcom/bt/service/framework/PowerManager;

    move-result-object v0

    .line 1623
    .local v0, fmPwrMgr:Lcom/broadcom/bt/service/framework/PowerManager;
    if-eqz v0, :cond_0

    .line 1625
    invoke-virtual {v0}, Lcom/broadcom/bt/service/framework/PowerManager;->isfmEnabled()Z

    move-result v1

    .line 1627
    :cond_0
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "liying    isBroadcomFMActive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    return v1
.end method

.method public isMasterMute()Z
    .locals 4

    .prologue
    .line 1054
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1056
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->isMasterMute()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1059
    :goto_0
    return v2

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isMasterMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1059
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isMicrophoneMute()Z
    .locals 1

    .prologue
    .line 1464
    invoke-static {}, Landroid/media/AudioSystem;->isMicrophoneMuted()Z

    move-result v0

    return v0
.end method

.method public isMusicActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1617
    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioManager;->isBroadcomFMActive()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isSilentMode()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2397
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 2398
    .local v0, ringerMode:I
    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    .line 2401
    .local v1, silentMode:Z
    :cond_0
    :goto_0
    return v1

    .line 2398
    .end local v1           #silentMode:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSpeakerphoneOn()Z
    .locals 4

    .prologue
    .line 1193
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1195
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->isSpeakerphoneOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1198
    :goto_0
    return v2

    .line 1196
    :catch_0
    move-exception v0

    .line 1197
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isSpeakerphoneOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1198
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isStreamMute(I)Z
    .locals 4
    .parameter "streamType"

    .prologue
    .line 1016
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1018
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->isStreamMute(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1021
    :goto_0
    return v2

    .line 1019
    :catch_0
    move-exception v0

    .line 1020
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isStreamMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1021
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isWiredHeadsetOn()Z
    .locals 2

    .prologue
    .line 1435
    const/4 v0, 0x4

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1439
    const/4 v0, 0x0

    .line 1441
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadSoundEffects()V
    .locals 5

    .prologue
    .line 1817
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1819
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->loadSoundEffects()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1823
    :goto_0
    return-void

    .line 1820
    :catch_0
    move-exception v0

    .line 1821
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in loadSoundEffects"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onHeadsetStatusChanged(Z)V
    .locals 2
    .parameter "connected"

    .prologue
    .line 1184
    sget-object v0, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v1, "  Remote Control   yinyunpu out() for "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    invoke-static {v0, p1}, Landroid/media/AudioManager;->onOuputEquipmentStatusChanged(ZZ)V

    .line 1186
    return-void
.end method

.method public onSpeakerStatusChanged(Z)V
    .locals 5
    .parameter "on"

    .prologue
    .line 480
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 481
    .local v2, service:Landroid/media/IAudioService;
    const/4 v0, 0x0

    .line 483
    .local v0, WiredHeadsetOn:Z
    :try_start_0
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, " onSpeakerStatusChanged  "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-interface {v2}, Landroid/media/IAudioService;->isWiredHeadsetOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 489
    :goto_0
    if-eqz p1, :cond_0

    .line 491
    invoke-static {}, Landroid/media/AudioManager;->getSpeakerPathValue()I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioManager;->applyAudioPathToPhone(I)V

    .line 497
    :goto_1
    return-void

    .line 485
    :catch_0
    move-exception v1

    .line 486
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in restoreWiredHeadsetState"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 495
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v3

    invoke-static {v3, v0}, Landroid/media/AudioManager;->onOuputEquipmentStatusChanged(ZZ)V

    goto :goto_1
.end method

.method public playSoundEffect(I)V
    .locals 5
    .parameter "effectType"

    .prologue
    .line 1757
    if-ltz p1, :cond_0

    const/16 v2, 0x9

    if-lt p1, v2, :cond_1

    .line 1771
    :cond_0
    :goto_0
    return-void

    .line 1761
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioManager;->querySoundEffectsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1765
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1767
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->playSoundEffect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1768
    :catch_0
    move-exception v0

    .line 1769
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in playSoundEffect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playSoundEffect(IF)V
    .locals 5
    .parameter "effectType"
    .parameter "volume"

    .prologue
    .line 1792
    if-ltz p1, :cond_0

    const/16 v2, 0x9

    if-lt p1, v2, :cond_1

    .line 1802
    :cond_0
    :goto_0
    return-void

    .line 1796
    :cond_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1798
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->playSoundEffectVolume(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1799
    :catch_0
    move-exception v0

    .line 1800
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in playSoundEffect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 7
    .parameter "event"
    .parameter "stream"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 541
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 542
    .local v0, keyCode:I
    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_0

    iget-wide v1, p0, Landroid/media/AudioManager;->mVolumeKeyUpTime:J

    const-wide/16 v3, 0x12c

    add-long/2addr v1, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 550
    iget-boolean v1, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v1, :cond_1

    .line 551
    invoke-virtual {p0, v5, v6}, Landroid/media/AudioManager;->adjustMasterVolume(II)V

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    invoke-virtual {p0, v5, p2, v6}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_0
.end method

.method public registerAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 1985
    iget-object v1, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1986
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1987
    monitor-exit v1

    .line 1991
    :goto_0
    return-void

    .line 1989
    :cond_0
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1990
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .locals 5
    .parameter "eventReceiver"

    .prologue
    const/4 v4, 0x0

    .line 2116
    if-nez p1, :cond_0

    .line 2131
    :goto_0
    return-void

    .line 2119
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2120
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerMediaButtonEventReceiver() error: receiver and context package names don\'t match"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2125
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2127
    .local v0, mediaButtonIntent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2128
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2130
    .local v1, pi:Landroid/app/PendingIntent;
    invoke-virtual {p0, v1, p1}, Landroid/media/AudioManager;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method public registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "eventReceiver"

    .prologue
    .line 2158
    if-nez p1, :cond_0

    .line 2168
    :goto_0
    return-void

    .line 2161
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2164
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2165
    :catch_0
    move-exception v0

    .line 2166
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in registerMediaButtonEventReceiverForCalls"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 5
    .parameter "pi"
    .parameter "eventReceiver"

    .prologue
    .line 2138
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2139
    :cond_0
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Cannot call registerMediaButtonIntent() with a null parameter"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    :goto_0
    return-void

    .line 2142
    :cond_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2145
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2146
    :catch_0
    move-exception v0

    .line 2147
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in registerMediaButtonIntent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 6
    .parameter "rcClient"

    .prologue
    .line 2220
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2234
    :cond_0
    :goto_0
    return-void

    .line 2223
    :cond_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 2225
    .local v2, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getIRemoteControlClient()Landroid/media/IRemoteControlClient;

    move-result-object v4

    iget-object v5, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Landroid/media/IAudioService;->registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I

    move-result v1

    .line 2230
    .local v1, rcseId:I
    invoke-virtual {p1, v1}, Landroid/media/RemoteControlClient;->setRcseId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2231
    .end local v1           #rcseId:I
    :catch_0
    move-exception v0

    .line 2232
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dead object in registerRemoteControlClient"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 5
    .parameter "rcd"

    .prologue
    .line 2261
    if-nez p1, :cond_0

    .line 2270
    :goto_0
    return-void

    .line 2264
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2266
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2267
    :catch_0
    move-exception v0

    .line 2268
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in registerRemoteControlDisplay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reloadAudioSettings()V
    .locals 5

    .prologue
    .line 2374
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2376
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->reloadAudioSettings()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2380
    :goto_0
    return-void

    .line 2377
    :catch_0
    move-exception v0

    .line 2378
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in reloadAudioSettings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 5
    .parameter "rcd"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 2299
    if-nez p1, :cond_0

    .line 2308
    :goto_0
    return-void

    .line 2302
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2304
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2305
    :catch_0
    move-exception v0

    .line 2306
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in remoteControlDisplayUsesBitmapSize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    .locals 10
    .parameter "l"
    .parameter "streamType"
    .parameter "durationHint"

    .prologue
    .line 2032
    const/4 v8, 0x0

    .line 2033
    .local v8, status:I
    const/4 v1, 0x1

    if-lt p3, v1, :cond_0

    const/4 v1, 0x3

    if-le p3, v1, :cond_1

    .line 2035
    :cond_0
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v2, "Invalid duration hint, audio focus request denied"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 2048
    .end local v8           #status:I
    .local v9, status:I
    :goto_0
    return v9

    .line 2038
    .end local v9           #status:I
    .restart local v8       #status:I
    :cond_1
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->registerAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 2040
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2042
    .local v0, service:Landroid/media/IAudioService;
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move v1, p2

    move v2, p3

    invoke-interface/range {v0 .. v6}, Landroid/media/IAudioService;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :goto_1
    move v9, v8

    .line 2048
    .end local v8           #status:I
    .restart local v9       #status:I
    goto :goto_0

    .line 2045
    .end local v9           #status:I
    .restart local v8       #status:I
    :catch_0
    move-exception v7

    .line 2046
    .local v7, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call requestAudioFocus() on AudioService due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public requestAudioFocusForCall(II)V
    .locals 8
    .parameter "streamType"
    .parameter "durationHint"

    .prologue
    .line 2062
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2064
    .local v0, service:Landroid/media/IAudioService;
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    const/4 v4, 0x0

    const-string v5, "AudioFocus_For_Phone_Ring_And_Calls"

    const-string/jumbo v6, "system"

    move v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v6}, Landroid/media/IAudioService;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2070
    :goto_0
    return-void

    .line 2067
    :catch_0
    move-exception v7

    .line 2068
    .local v7, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call requestAudioFocusForCall() on AudioService due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public restoreWiredHeadsetState(Z)V
    .locals 5
    .parameter "handsetstate"

    .prologue
    .line 467
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 469
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " restoreWiredHeadsetState  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->restoreWiredHeadsetState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_0
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "restoreWiredHeadsetState exit"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return-void

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in restoreWiredHeadsetState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 7
    .parameter "device"
    .parameter "state"

    .prologue
    .line 2538
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v3

    .line 2539
    .local v3, service:Landroid/media/IAudioService;
    const/4 v0, 0x0

    .line 2541
    .local v0, delay:I
    :try_start_0
    invoke-interface {v3, p1, p2}, Landroid/media/IAudioService;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v1, v0

    .line 2545
    .end local v0           #delay:I
    .local v1, delay:I
    return v1

    .line 2542
    .end local v1           #delay:I
    .restart local v0       #delay:I
    :catch_0
    move-exception v2

    .line 2543
    .local v2, e:Landroid/os/RemoteException;
    :try_start_1
    sget-object v4, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dead object in setBluetoothA2dpDeviceConnectionState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2545
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    goto :goto_0
.end method

.method public setBluetoothA2dpOn(Z)V
    .locals 0
    .parameter "on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1398
    return-void
.end method

.method public setBluetoothScoOn(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 1366
    invoke-static {p1}, Landroid/media/AudioManager;->onBluetoothScoChanged(Z)V

    .line 1368
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1370
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setBluetoothScoOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1374
    :goto_0
    return-void

    .line 1371
    :catch_0
    move-exception v0

    .line 1372
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setBluetoothScoOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMasterMute(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1031
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->setMasterMute(ZI)V

    .line 1032
    return-void
.end method

.method public setMasterMute(ZI)V
    .locals 4
    .parameter "state"
    .parameter "flags"

    .prologue
    .line 1040
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1042
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->setMasterMute(ZILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    :goto_0
    return-void

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setMasterMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMasterVolume(II)V
    .locals 4
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 947
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 949
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->setMasterVolume(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    :goto_0
    return-void

    .line 950
    :catch_0
    move-exception v0

    .line 951
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setMasterVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMicrophoneMute(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 1455
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 1456
    return-void
.end method

.method public setMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 1483
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1485
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->setMode(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1489
    :goto_0
    return-void

    .line 1486
    :catch_0
    move-exception v0

    .line 1487
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1666
    return-void
.end method

.method public setParameters(Ljava/lang/String;)V
    .locals 0
    .parameter "keyValuePairs"

    .prologue
    .line 1676
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1677
    return-void
.end method

.method public setRingerMode(I)V
    .locals 4
    .parameter "ringerMode"

    .prologue
    .line 856
    invoke-static {p1}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 865
    :goto_0
    return-void

    .line 859
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 861
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setRingerMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setRingerMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRouting(III)V
    .locals 0
    .parameter "mode"
    .parameter "routes"
    .parameter "mask"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1595
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 1173
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->onSpeakerStatusChanged(Z)V

    .line 1175
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1177
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setSpeakerphoneOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1181
    :goto_0
    return-void

    .line 1178
    :catch_0
    move-exception v0

    .line 1179
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setSpeakerphoneOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStreamMute(IZ)V
    .locals 4
    .parameter "streamType"
    .parameter "state"

    .prologue
    .line 1002
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1004
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->setStreamMute(IZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    :goto_0
    return-void

    .line 1005
    :catch_0
    move-exception v0

    .line 1006
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStreamSolo(IZ)V
    .locals 4
    .parameter "streamType"
    .parameter "state"

    .prologue
    .line 973
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 975
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->setStreamSolo(IZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    :goto_0
    return-void

    .line 976
    :catch_0
    move-exception v0

    .line 977
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamSolo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStreamVolume(III)V
    .locals 4
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 878
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 880
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_0

    .line 881
    invoke-interface {v1, p2, p3}, Landroid/media/IAudioService;->setMasterVolume(II)V

    .line 888
    :goto_0
    return-void

    .line 883
    :cond_0
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->setStreamVolume(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 885
    :catch_0
    move-exception v0

    .line 886
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVibrateSetting(II)V
    .locals 4
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    .line 1154
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1156
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->setVibrateSetting(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1160
    :goto_0
    return-void

    .line 1157
    :catch_0
    move-exception v0

    .line 1158
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setVibrateSetting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;)V
    .locals 5
    .parameter "device"
    .parameter "state"
    .parameter "name"

    .prologue
    .line 2521
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2523
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2527
    :goto_0
    return-void

    .line 2524
    :catch_0
    move-exception v0

    .line 2525
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in setWiredDeviceConnectionState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWiredHeadsetOn(Z)V
    .locals 0
    .parameter "on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1423
    return-void
.end method

.method public shouldVibrate(I)Z
    .locals 4
    .parameter "vibrateType"

    .prologue
    .line 1099
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1101
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->shouldVibrate(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1104
    :goto_0
    return v2

    .line 1102
    :catch_0
    move-exception v0

    .line 1103
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in shouldVibrate"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1104
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startBluetoothSco()V
    .locals 4

    .prologue
    .line 1329
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1331
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->startBluetoothSco(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1335
    :goto_0
    return-void

    .line 1332
    :catch_0
    move-exception v0

    .line 1333
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in startBluetoothSco"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopBluetoothSco()V
    .locals 4

    .prologue
    .line 1347
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1349
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->stopBluetoothSco(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1353
    :goto_0
    return-void

    .line 1350
    :catch_0
    move-exception v0

    .line 1351
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in stopBluetoothSco"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unloadSoundEffects()V
    .locals 5

    .prologue
    .line 1831
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1833
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->unloadSoundEffects()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1837
    :goto_0
    return-void

    .line 1834
    :catch_0
    move-exception v0

    .line 1835
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in unloadSoundEffects"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 2001
    iget-object v1, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2002
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    monitor-exit v1

    .line 2004
    return-void

    .line 2003
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "eventReceiver"

    .prologue
    const/4 v3, 0x0

    .line 2188
    if-nez p1, :cond_0

    .line 2198
    :goto_0
    return-void

    .line 2192
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2194
    .local v0, mediaButtonIntent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2195
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2197
    .local v1, pi:Landroid/app/PendingIntent;
    invoke-virtual {p0, v1, p1}, Landroid/media/AudioManager;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method public unregisterMediaButtonEventReceiverForCalls()V
    .locals 4

    .prologue
    .line 2174
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2176
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->unregisterMediaButtonEventReceiverForCalls()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2180
    :goto_0
    return-void

    .line 2177
    :catch_0
    move-exception v0

    .line 2178
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in unregisterMediaButtonEventReceiverForCalls"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 5
    .parameter "pi"
    .parameter "eventReceiver"

    .prologue
    .line 2204
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2206
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2210
    :goto_0
    return-void

    .line 2207
    :catch_0
    move-exception v0

    .line 2208
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in unregisterMediaButtonIntent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 5
    .parameter "rcClient"

    .prologue
    .line 2243
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2253
    :cond_0
    :goto_0
    return-void

    .line 2246
    :cond_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2248
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getIRemoteControlClient()Landroid/media/IRemoteControlClient;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/media/IAudioService;->unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2250
    :catch_0
    move-exception v0

    .line 2251
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in unregisterRemoteControlClient"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 5
    .parameter "rcd"

    .prologue
    .line 2278
    if-nez p1, :cond_0

    .line 2287
    :goto_0
    return-void

    .line 2281
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2283
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2284
    :catch_0
    move-exception v0

    .line 2285
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in unregisterRemoteControlDisplay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
