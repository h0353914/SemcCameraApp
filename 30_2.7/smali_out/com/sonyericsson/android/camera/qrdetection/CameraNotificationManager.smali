.class public Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;
.super Ljava/lang/Object;
.source "CameraNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkCallbackImpl;,
        Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;,
        Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;,
        Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;,
        Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;,
        Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:Ljava/lang/String; = "[0-9A-Fa-f]*"

.field private static final HEX_DIGITS_64:Ljava/util/regex/Pattern;

.field public static final NOTIFICATIONCANCELED:Ljava/lang/String; = "NOTIFICATIONCAN_CELED"

.field public static final QRCHANNEL:Ljava/lang/String; = "QR_NOTIFICATION_CHANNEL"

.field public static final QRCHANNELID:Ljava/lang/String; = "QR_NOTIFICATION_CHANNEL_ID"

.field public static final QRNOTIFICATIONID:I

.field private static final START_QR_DETECT_DELAY_MILLIS:J = 0x1388L

.field private static final SYMBOL_BACKSLASH:C = '\\'

.field private static final SYMBOL_QUOTATION:Ljava/lang/String; = "\""

.field private static final WIFI_RESULT_HIDDEN_FIELD:Ljava/lang/String; = "H:"

.field private static final WIFI_RESULT_PASSWORD_FIELD:Ljava/lang/String; = "P:"

.field private static final WIFI_RESULT_SEPARATOR:C = ';'

.field private static final WIFI_RESULT_SSID_FIELD:Ljava/lang/String; = "S:"

.field private static final WIFI_RESULT_TITLE_FIELD:Ljava/lang/String; = "WIFI:"

.field private static final WIFI_RESULT_TYPE_FIELD:Ljava/lang/String; = "T:"

.field private static final WIFI_RESULT_TYPE_NOPASS:Ljava/lang/String; = "nopass"

.field private static final WIFI_RESULT_TYPE_SAE:Ljava/lang/String; = "SAE"

.field private static final WIFI_RESULT_TYPE_WEP:Ljava/lang/String; = "WEP"

.field private static final WIFI_RESULT_TYPE_WPA:Ljava/lang/String; = "WPA"

.field private static final WIFI_RESULT_TYPE_WPA2:Ljava/lang/String; = "WPA2"


# instance fields
.field private QrDetectNotifyReceiver:Landroid/content/BroadcastReceiver;

.field private mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerController;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDetectResult:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsNotifing:Z

.field private mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

.field private mQrCodeScanner:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

.field private mQrResultListener:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;

.field private final mStartQrDetectorTasks:Ljava/lang/Runnable;

.field private mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->QRNOTIFICATIONID:I

    const-string v0, "[0-9A-Fa-f]{64}"

    .line 85
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->HEX_DIGITS_64:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerController;)V
    .registers 5

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mIsNotifing:Z

    .line 186
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$1;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mQrResultListener:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;

    .line 195
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$2;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->QrDetectNotifyReceiver:Landroid/content/BroadcastReceiver;

    .line 276
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$3;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mStartQrDetectorTasks:Ljava/lang/Runnable;

    .line 176
    iput-object p2, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mQrCodeScanner:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

    .line 177
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    .line 178
    iput-object p3, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerController;

    .line 179
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mHandler:Landroid/os/Handler;

    .line 180
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mQrCodeScanner:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mQrResultListener:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;->registerListener(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;)V

    .line 181
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 182
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private ParseResult(Ljava/lang/String;)V
    .registers 5

    .line 352
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 353
    iput-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    .line 355
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WIFI:"

    .line 356
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 357
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->parseWifiResult(Ljava/lang/String;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    .line 358
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->WIFI:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendReadQrCodeEvent(Ljava/lang/String;)V

    goto :goto_5a

    .line 359
    :cond_27
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->isBasicallyValidURL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 360
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    sget-object v2, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->URL:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    .line 361
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->URL:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendReadQrCodeEvent(Ljava/lang/String;)V

    goto :goto_5a

    .line 363
    :cond_44
    new-instance p1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    sget-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->OTHER:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    invoke-direct {p1, p0, v0, v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    .line 364
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->OTHER:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendReadQrCodeEvent(Ljava/lang/String;)V

    :goto_5a
    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mDetectResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;)V
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->ParseResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)V
    .registers 1

    .line 63
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->notifyQrDetectResult()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mQrCodeScanner:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)V
    .registers 1

    .line 63
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->handleResult()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)Landroid/content/BroadcastReceiver;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->QrDetectNotifyReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method private addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 563
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, ""

    return-object p1

    .line 567
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_21

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "\""

    .line 568
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    return-object p1

    .line 572
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private changeNetworkCommon()Landroid/net/wifi/WifiConfiguration;
    .registers 3

    .line 578
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 579
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 580
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 581
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 582
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 583
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 585
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->getSsid()Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$800(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 586
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->isHidden()Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$1400(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    return-object v0
.end method

.method private changeNetworkUnEncrypted()V
    .registers 4

    .line 619
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->changeNetworkCommon()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 620
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 621
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method private changeNetworkWEP()V
    .registers 6

    .line 591
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->changeNetworkCommon()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 592
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->getPassword()Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$1300(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v1

    .line 593
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xa

    if-eq v2, v4, :cond_1b

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1b

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_28

    :cond_1b
    const-string v2, "[0-9A-Fa-f]*"

    .line 595
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 596
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v1, v2, v3

    goto :goto_30

    .line 598
    :cond_28
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    .line 600
    :goto_30
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 601
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 602
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 603
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method private changeNetworkWPA()V
    .registers 4

    .line 607
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->changeNetworkCommon()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 608
    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->HEX_DIGITS_64:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->getPassword()Ljava/lang/String;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$1300(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 609
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->getPassword()Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$1300(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_2b

    .line 611
    :cond_1f
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->getPassword()Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$1300(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 614
    :goto_2b
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 615
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method private connectWifiNetwork()V
    .registers 4

    .line 526
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->getNetworkEncryption()Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$700(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v0

    .line 527
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->forIntentValue(Ljava/lang/String;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    move-result-object v0

    .line 528
    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->NO_PASSWORD:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    if-ne v0, v1, :cond_12

    .line 529
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->changeNetworkUnEncrypted()V

    goto :goto_33

    .line 531
    :cond_12
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->getPassword()Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$1300(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 532
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    .line 533
    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$4;->$SwitchMap$com$sonyericsson$android$camera$qrdetection$CameraNotificationManager$NetworkType:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_48

    goto :goto_33

    .line 538
    :pswitch_2c
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->changeNetworkWPA()V

    goto :goto_33

    .line 535
    :pswitch_30
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->changeNetworkWEP()V

    .line 543
    :cond_33
    :goto_33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$WifiSettingsActivity"

    .line 544
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2c
    .end packed-switch
.end method

.method private countPrecedingBackslashes(Ljava/lang/CharSequence;I)I
    .registers 6

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    :goto_3
    if-ltz p2, :cond_12

    .line 439
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_12

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_12
    return v0
.end method

.method private handleResult()V
    .registers 3

    .line 336
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->geParsedResultType()Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$600(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->URL:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    if-ne v0, v1, :cond_e

    .line 337
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->openURL()V

    goto :goto_3b

    .line 338
    :cond_e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->geParsedResultType()Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$600(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->WIFI:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    .line 339
    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->getNetworkEncryption()Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$700(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 340
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->isCTAWifi()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 341
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->APPLICATION_NOTIFICATION_NETWORK:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->showQrWifiDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;)V

    goto :goto_3b

    .line 343
    :cond_32
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->handleWifiResult()V

    goto :goto_3b

    .line 346
    :cond_36
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mQrCodeScanner:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;->start()V

    .line 348
    :goto_3b
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendTransitionQrCodeEvent()V

    return-void
.end method

.method private isBasicallyValidURL(Ljava/lang/String;)Z
    .registers 3

    .line 389
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method private isCTAWifi()Z
    .registers 3

    .line 629
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isCtaPackageInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->APPLICATION_NOTIFICATION_NETWORK:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 630
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isNeverShowDialog(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private isWifiSettingOn()Z
    .registers 2

    .line 625
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method private matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;
    .registers 14

    const/4 v0, 0x0

    .line 394
    new-array v1, v0, [Ljava/lang/String;

    .line 396
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v0

    move-object v5, v3

    :goto_a
    if-ge v4, v2, :cond_5a

    .line 398
    invoke-virtual {p2, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-gez v4, :cond_13

    goto :goto_5a

    .line 402
    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    const/4 v6, 0x1

    move-object v7, v5

    move v5, v4

    :goto_1b
    if-eqz v6, :cond_57

    .line 406
    invoke-virtual {p2, p3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-gez v5, :cond_29

    .line 408
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    move v6, v0

    goto :goto_1b

    .line 410
    :cond_29
    invoke-direct {p0, p2, v5}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->countPrecedingBackslashes(Ljava/lang/CharSequence;I)I

    move-result v8

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_34

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_34
    if-nez v7, :cond_3c

    .line 416
    new-instance v7, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 418
    :cond_3c
    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->unescapeBackslash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz p4, :cond_4a

    .line 420
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 422
    :cond_4a
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_53

    .line 423
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_53
    add-int/lit8 v5, v5, 0x1

    move v6, v0

    goto :goto_1b

    :cond_57
    move v4, v5

    move-object v5, v7

    goto :goto_a

    :cond_5a
    :goto_5a
    if-eqz v5, :cond_6a

    .line 430
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_63

    goto :goto_6a

    .line 433
    :cond_63
    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_6a
    :goto_6a
    return-object v3
.end method

.method private matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;
    .registers 5

    .line 450
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_b

    :cond_8
    const/4 p2, 0x0

    .line 451
    aget-object p1, p1, p2

    :goto_b
    return-object p1
.end method

.method private notifyQrDetectResult()V
    .registers 11

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mQrCodeScanner:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->QrDetectNotifyReceiver:Landroid/content/BroadcastReceiver;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;->registerReceiver(Landroid/content/BroadcastReceiver;)V

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0f02f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->geParsedResultType()Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$600(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->URL:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2f

    .line 220
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0f02ee

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mDetectResult:Ljava/lang/String;

    aput-object v6, v5, v4

    aput-object v6, v5, v3

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_64

    .line 222
    :cond_2f
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->geParsedResultType()Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$600(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->WIFI:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    if-ne v1, v2, :cond_5b

    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    .line 223
    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->getNetworkEncryption()Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$700(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SAE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 224
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0f02ef

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    .line 225
    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->getSsid()Ljava/lang/String;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$800(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 224
    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_64

    .line 227
    :cond_5b
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0f02ed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 229
    :goto_64
    iget-object v2, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 231
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sonyericsson.android.camera.intent.action.CAMERA_QR_SCAN_RESULT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    iget-object v6, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    sget v7, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->QRNOTIFICATIONID:I

    const/high16 v8, 0x8000000

    invoke-static {v6, v7, v5, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 235
    new-instance v6, Landroid/content/Intent;

    const-string v7, "NOTIFICATIONCAN_CELED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    iget-object v7, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    sget v8, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->QRNOTIFICATIONID:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v7, v8, v6, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 240
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    const-string v9, "QR_NOTIFICATION_CHANNEL_ID"

    invoke-direct {v7, v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v8, 0x7f080252

    .line 241
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 242
    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 243
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 244
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 245
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 249
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v5, "QR_NOTIFICATION_CHANNEL_ID"

    const-string v6, "QR_NOTIFICATION_CHANNEL"

    const/4 v7, 0x4

    invoke-direct {v1, v5, v6, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 251
    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 252
    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 v5, -0x1

    .line 253
    invoke-virtual {v1, v5}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 254
    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 255
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 256
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 258
    sget v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->QRNOTIFICATIONID:I

    invoke-virtual {v2, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 259
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mIsNotifing:Z

    .line 260
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mStartQrDetectorTasks:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerController;

    if-eqz v0, :cond_f0

    .line 262
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerController;->resetTimer()V

    :cond_f0
    return-void
.end method

.method private openURL()V
    .registers 4

    .line 476
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 480
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->geUrl()Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$1200(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTP://"

    .line 483
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6a

    :cond_2a
    const-string v1, "HTTPS://"

    .line 485
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6a

    :cond_49
    const-string v1, "http://"

    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6a

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    :cond_6a
    :goto_6a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 492
    :try_start_75
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_75 .. :try_end_7a} :catch_7b

    goto :goto_84

    :catch_7b
    const-string v0, "openURL ActivityNotFoundException "

    .line 494
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_84
    return-void
.end method

.method private parseWifiResult(Ljava/lang/String;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;
    .registers 13

    const/4 v0, 0x5

    .line 373
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S:"

    const/4 v2, 0x0

    const/16 v3, 0x3b

    .line 374
    invoke-direct {p0, v1, v0, v3, v2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3e

    .line 376
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_3e

    :cond_17
    const-string v1, "P:"

    .line 379
    invoke-direct {p0, v1, v0, v3, v2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v5

    const-string v1, "T:"

    .line 381
    invoke-direct {p0, v1, v0, v3, v2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v6

    const-string v1, "H:"

    .line 383
    invoke-direct {p0, v1, v0, v3, v2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 385
    new-instance v8, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    sget-object v9, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->WIFI:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    const/4 v10, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, v4

    move-object v4, v5

    move v5, v7

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$1;)V

    return-object v8

    .line 377
    :cond_3e
    :goto_3e
    new-instance v8, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->WIFI:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$1;)V

    return-object v8
.end method

.method private showQrWifiDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;)V
    .registers 6

    .line 634
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_QR_WIFI_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method private unescapeBackslash(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/16 v0, 0x5c

    .line 455
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_9

    return-object p1

    .line 459
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 460
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, -0x1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 461
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move v4, v5

    :goto_1d
    if-ge v1, v2, :cond_31

    .line 464
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-nez v4, :cond_2a

    if-eq v6, v0, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v4, 0x1

    goto :goto_2e

    .line 466
    :cond_2a
    :goto_2a
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v5

    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 472
    :cond_31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updateNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .registers 4

    .line 550
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    if-ltz p1, :cond_21

    .line 552
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 553
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto :goto_2a

    :cond_17
    const-string p1, "CameraNotificationManager enableNetwork error"

    .line 555
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_2a

    :cond_21
    const-string p1, "CameraNotificationManager  networkId error"

    .line 558
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_2a
    return-void
.end method


# virtual methods
.method public cancelNotification()V
    .registers 3

    .line 267
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mIsNotifing:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    .line 268
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mIsNotifing:Z

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    .line 270
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 271
    sget v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->QRNOTIFICATIONID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 273
    :cond_16
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mStartQrDetectorTasks:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public geParsedResultType()Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;
    .registers 2

    .line 369
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->geParsedResultType()Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$600(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    move-result-object v0

    return-object v0
.end method

.method public handleWifiResult()V
    .registers 2

    .line 517
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->isWifiSettingOn()Z

    move-result v0

    if-nez v0, :cond_c

    .line 518
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->CONNECT_WIFI_SETTING:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->showQrWifiDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;)V

    goto :goto_14

    .line 520
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mQrCodeScanner:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;->start()V

    .line 521
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->connectWifiNetwork()V

    :goto_14
    return-void
.end method

.method public setViewFinder(Lcom/sonyericsson/android/camera/view/ViewFinder;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    return-void
.end method
