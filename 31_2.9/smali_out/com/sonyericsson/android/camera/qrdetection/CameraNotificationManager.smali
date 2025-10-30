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

.field private static final START_QR_DETECT_DELAY_MILLIS:J = 0x1388L

.field private static final SYMBOL_BACKSLASH:C = '\\'

.field private static final SYMBOL_QUOTATION:Ljava/lang/String; = "\""

.field private static final URL_RESULT_PREFIX_HTTP:Ljava/lang/String; = "http://"

.field private static final URL_RESULT_PREFIX_HTTPS:Ljava/lang/String; = "https://"

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

.field private static mIsGmsMatterSupportChecked:Ljava/lang/Boolean;

.field private static mIsGmsMatterSupported:Ljava/lang/Boolean;


# instance fields
.field private mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerController;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDetectResult:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

.field private mQrCodeScanner:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

.field private mQrResultListener:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;

.field private final mStartQrDetectorTasks:Ljava/lang/Runnable;

.field private mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "[0-9A-Fa-f]{64}"

    .line 89
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->HEX_DIGITS_64:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 90
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mIsGmsMatterSupportChecked:Ljava/lang/Boolean;

    .line 91
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mIsGmsMatterSupported:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerController;)V
    .registers 5

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$1;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mQrResultListener:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;

    .line 301
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$5;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mStartQrDetectorTasks:Ljava/lang/Runnable;

    .line 169
    iput-object p2, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mQrCodeScanner:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

    .line 170
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    .line 171
    iput-object p3, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerController;

    .line 172
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mHandler:Landroid/os/Handler;

    .line 173
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mQrCodeScanner:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mQrResultListener:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;->registerListener(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;)V

    .line 174
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 175
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private ParseResult(Ljava/lang/String;)V
    .registers 8

    .line 381
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 382
    iput-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    .line 384
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WIFI:"

    .line 385
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 386
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->parseWifiResult(Ljava/lang/String;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    .line 387
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->WIFI:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendReadQrCodeEvent(Ljava/lang/String;)V

    goto/16 :goto_f2

    .line 388
    :cond_28
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->isBasicallyValidURL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 389
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    sget-object v2, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->URL:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    .line 390
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->URL:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendReadQrCodeEvent(Ljava/lang/String;)V

    goto/16 :goto_f2

    .line 391
    :cond_46
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->isMatterQrCode(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 392
    sget-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mIsGmsMatterSupportChecked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a6

    .line 393
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.google.android.gms"

    .line 394
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 395
    iget-object v2, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_7f

    move v0, v3

    goto :goto_80

    :cond_7f
    move v0, v2

    :goto_80
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mIsGmsMatterSupported:Ljava/lang/Boolean;

    .line 397
    new-array v0, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsGmsMatterSupported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mIsGmsMatterSupported:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 398
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mIsGmsMatterSupportChecked:Ljava/lang/Boolean;

    .line 400
    :cond_a6
    sget-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mIsGmsMatterSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 401
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    sget-object v2, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->MATTER:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    .line 402
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->MATTER:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendReadQrCodeEvent(Ljava/lang/String;)V

    goto :goto_f2

    .line 404
    :cond_c5
    new-instance p1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    sget-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->MATTER_GMS_FAILED:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    invoke-direct {p1, p0, v0, v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    .line 405
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->MATTER_GMS_FAILED:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendReadQrCodeEvent(Ljava/lang/String;)V

    goto :goto_f2

    .line 408
    :cond_dc
    new-instance p1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    sget-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->OTHER:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    invoke-direct {p1, p0, v0, v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    .line 409
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->OTHER:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendReadQrCodeEvent(Ljava/lang/String;)V

    :goto_f2
    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mDetectResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->ParseResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->notifyQrDetectResult()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mQrCodeScanner:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->handleResult()V

    return-void
.end method

.method private addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 608
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, ""

    return-object p1

    .line 612
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

    .line 613
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    return-object p1

    .line 617
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    .line 618
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private changeNetworkCommon()Landroid/net/wifi/WifiConfiguration;
    .registers 3

    .line 623
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 624
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 625
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 626
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 627
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 628
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 630
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->getSsid()Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$800(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 631
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->isHidden()Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$1400(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    return-object v0
.end method

.method private changeNetworkUnEncrypted()V
    .registers 4

    .line 664
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->changeNetworkCommon()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 665
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 666
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method private changeNetworkWEP()V
    .registers 6

    .line 636
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->changeNetworkCommon()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 637
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->getPassword()Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$1300(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v1

    .line 638
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

    .line 640
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 641
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v1, v2, v3

    goto :goto_30

    .line 643
    :cond_28
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    .line 645
    :goto_30
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 646
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 647
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 648
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method private changeNetworkWPA()V
    .registers 4

    .line 652
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->changeNetworkCommon()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 653
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

    .line 654
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->getPassword()Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$1300(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_2b

    .line 656
    :cond_1f
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->getPassword()Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$1300(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 659
    :goto_2b
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 660
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method private connectWifiNetwork()V
    .registers 4

    .line 571
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->getNetworkEncryption()Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$700(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v0

    .line 572
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->forIntentValue(Ljava/lang/String;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    move-result-object v0

    .line 573
    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->NO_PASSWORD:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    if-ne v0, v1, :cond_12

    .line 574
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->changeNetworkUnEncrypted()V

    goto :goto_33

    .line 576
    :cond_12
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->getPassword()Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$1300(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 577
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    .line 578
    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$6;->$SwitchMap$com$sonyericsson$android$camera$qrdetection$CameraNotificationManager$NetworkType:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_48

    goto :goto_33

    .line 583
    :pswitch_2c
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->changeNetworkWPA()V

    goto :goto_33

    .line 580
    :pswitch_30
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->changeNetworkWEP()V

    .line 588
    :cond_33
    :goto_33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$WifiSettingsActivity"

    .line 589
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
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

    .line 484
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

    .line 361
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->geParsedResultType()Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$300(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->URL:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    if-ne v0, v1, :cond_e

    .line 362
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->openURL()V

    goto :goto_59

    .line 363
    :cond_e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->geParsedResultType()Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$300(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->WIFI:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    .line 364
    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->getNetworkEncryption()Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$700(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 365
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->isCTAWifi()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 366
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->APPLICATION_NOTIFICATION_NETWORK:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->showQrWifiDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;)V

    goto :goto_59

    .line 368
    :cond_32
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->handleWifiResult()V

    goto :goto_59

    .line 370
    :cond_36
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->geParsedResultType()Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$300(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->MATTER:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    if-ne v0, v1, :cond_54

    .line 371
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # getter for: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$900(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 372
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # getter for: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$900(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->startCommissioning(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    goto :goto_59

    .line 375
    :cond_54
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mQrCodeScanner:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;->start()V

    .line 377
    :cond_59
    :goto_59
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendTransitionQrCodeEvent()V

    return-void
.end method

.method private isAddWifiConfigAllowed()Z
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObsoleteSdkInt"
        }
    .end annotation

    .line 293
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x21

    if-lt v0, v2, :cond_1d

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 295
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "no_add_wifi_config"

    .line 296
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_1d
    return v1
.end method

.method private isBasicallyValidURL(Ljava/lang/String;)Z
    .registers 3

    .line 434
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

    .line 674
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isCtaPackageInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->APPLICATION_NOTIFICATION_NETWORK:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 675
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

.method private isMatterQrCode(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 6

    const/4 v0, 0x1

    .line 268
    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMatterQrCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 269
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMatterQrCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MT:[A-Z0-9.-]{19,}"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const-string v0, "MT:[A-Z0-9.-]{19,}"

    .line 270
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private isWifiSettingOn()Z
    .registers 2

    .line 670
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method private matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;
    .registers 14

    const/4 v0, 0x0

    .line 439
    new-array v1, v0, [Ljava/lang/String;

    .line 441
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v0

    move-object v5, v3

    :goto_a
    if-ge v4, v2, :cond_5a

    .line 443
    invoke-virtual {p2, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-gez v4, :cond_13

    goto :goto_5a

    .line 447
    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    const/4 v6, 0x1

    move-object v7, v5

    move v5, v4

    :goto_1b
    if-eqz v6, :cond_57

    .line 451
    invoke-virtual {p2, p3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-gez v5, :cond_29

    .line 453
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    move v6, v0

    goto :goto_1b

    .line 455
    :cond_29
    invoke-direct {p0, p2, v5}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->countPrecedingBackslashes(Ljava/lang/CharSequence;I)I

    move-result v8

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_34

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_34
    if-nez v7, :cond_3c

    .line 461
    new-instance v7, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 463
    :cond_3c
    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->unescapeBackslash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz p4, :cond_4a

    .line 465
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 467
    :cond_4a
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_53

    .line 468
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

    .line 475
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_63

    goto :goto_6a

    .line 478
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

    .line 495
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_b

    :cond_8
    const/4 p2, 0x0

    .line 496
    aget-object p1, p1, p2

    :goto_b
    return-object p1
.end method

.method private notifyQrDetectResult()V
    .registers 6

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->geParsedResultType()Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$300(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->URL:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    if-ne v0, v1, :cond_4a

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->geUrl()Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$400(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    const-string v1, "http://"

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "http://"

    const-string v2, ""

    .line 197
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    :cond_23
    const-string v1, "https://"

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "https://"

    const-string v2, ""

    .line 199
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 202
    :cond_33
    :goto_33
    new-instance v1, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;

    sget-object v2, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->QR_DETECT_RESULT_URL:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)V

    .line 204
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->setMessageString(Ljava/lang/String;)V

    .line 205
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$2;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)V

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->setMessageListener(Landroid/view/View$OnClickListener;)V

    .line 213
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->showQrDetectionResult(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;)V

    goto/16 :goto_d6

    .line 214
    :cond_4a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->geParsedResultType()Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$300(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->WIFI:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    if-ne v0, v1, :cond_a6

    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    .line 215
    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->getNetworkEncryption()Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$700(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    .line 216
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->isAddWifiConfigAllowed()Z

    move-result v0

    if-nez v0, :cond_73

    .line 217
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->QR_DETECT_CANNOT_CONNECT_WIFI:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)V

    .line 219
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->showQrDetectionResult(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;)V

    goto :goto_d6

    .line 221
    :cond_73
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->QR_DETECT_RESULT_WIFI:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)V

    .line 223
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    .line 224
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f033d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    .line 226
    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->getSsid()Ljava/lang/String;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$800(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 223
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->setMessageString(Ljava/lang/String;)V

    .line 227
    new-instance v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$3;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->setMessageListener(Landroid/view/View$OnClickListener;)V

    .line 235
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->showQrDetectionResult(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;)V

    goto :goto_d6

    .line 237
    :cond_a6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->geParsedResultType()Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$300(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->MATTER:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    if-ne v0, v1, :cond_cc

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->geUrl()Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$400(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v0

    .line 239
    new-instance v1, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;

    sget-object v2, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->QR_DETECT_RESULT_MATTER:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)V

    .line 241
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->setMessageString(Ljava/lang/String;)V

    .line 242
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$4;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)V

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->setMessageListener(Landroid/view/View$OnClickListener;)V

    .line 250
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->showQrDetectionResult(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;)V

    goto :goto_d6

    .line 252
    :cond_cc
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->QR_DETECT_RESULT_OTHER:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)V

    .line 254
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->showQrDetectionResult(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;)V

    .line 257
    :goto_d6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mStartQrDetectorTasks:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerController;

    if-eqz v0, :cond_e6

    .line 259
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerController;->resetTimer()V

    :cond_e6
    return-void
.end method

.method private openURL()V
    .registers 4

    .line 521
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 525
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->geUrl()Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$400(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTP://"

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 529
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

    .line 530
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 531
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

    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6a

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 535
    :cond_6a
    :goto_6a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 537
    :try_start_75
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_75 .. :try_end_7a} :catch_7b

    goto :goto_84

    :catch_7b
    const-string v0, "openURL ActivityNotFoundException "

    .line 539
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_84
    return-void
.end method

.method private parseWifiResult(Ljava/lang/String;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;
    .registers 13

    const/4 v0, 0x5

    .line 418
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S:"

    const/4 v2, 0x0

    const/16 v3, 0x3b

    .line 419
    invoke-direct {p0, v1, v0, v3, v2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3e

    .line 421
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_3e

    :cond_17
    const-string v1, "P:"

    .line 424
    invoke-direct {p0, v1, v0, v3, v2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v5

    const-string v1, "T:"

    .line 426
    invoke-direct {p0, v1, v0, v3, v2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v6

    const-string v1, "H:"

    .line 428
    invoke-direct {p0, v1, v0, v3, v2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 430
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

    .line 422
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

.method public static setGmsMatterSupportChecked(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 4

    const/4 v0, 0x1

    .line 263
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGmsMatterSupportChecked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 264
    sput-object p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mIsGmsMatterSupportChecked:Ljava/lang/Boolean;

    return-object p0
.end method

.method private showQrDetectionResult(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;)V
    .registers 6

    .line 684
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_SHOW_QR_DETECTION_RESULT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method private showQrWifiDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;)V
    .registers 6

    .line 679
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_QR_WIFI_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method private startCommissioning(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p2, "com.google.android.gms"

    .line 276
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    .line 278
    :try_start_14
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 279
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_1b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_14 .. :try_end_1b} :catch_1c

    return-object p1

    :catch_1c
    move-exception p1

    .line 281
    new-array p2, p2, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startCommissioning ActivityNotFoundException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 283
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private unescapeBackslash(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/16 v0, 0x5c

    .line 500
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_9

    return-object p1

    .line 504
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 505
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, -0x1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 506
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move v4, v5

    :goto_1d
    if-ge v1, v2, :cond_31

    .line 509
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-nez v4, :cond_2a

    if-eq v6, v0, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v4, 0x1

    goto :goto_2e

    .line 511
    :cond_2a
    :goto_2a
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v5

    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 517
    :cond_31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updateNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .registers 4

    .line 595
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    if-ltz p1, :cond_21

    .line 597
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 598
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto :goto_2a

    :cond_17
    const-string p1, "CameraNotificationManager enableNetwork error"

    .line 600
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_2a

    :cond_21
    const-string p1, "CameraNotificationManager  networkId error"

    .line 603
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_2a
    return-void
.end method


# virtual methods
.method public cancelNotification()V
    .registers 3

    .line 288
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mStartQrDetectorTasks:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public geParsedResultType()Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;
    .registers 2

    .line 414
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->geParsedResultType()Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->access$300(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    move-result-object v0

    return-object v0
.end method

.method public handleWifiResult()V
    .registers 2

    .line 562
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->isWifiSettingOn()Z

    move-result v0

    if-nez v0, :cond_c

    .line 563
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->CONNECT_WIFI_SETTING:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->showQrWifiDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;)V

    goto :goto_14

    .line 565
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mQrCodeScanner:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;->start()V

    .line 566
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->connectWifiNetwork()V

    :goto_14
    return-void
.end method

.method public setViewFinder(Lcom/sonyericsson/android/camera/view/ViewFinder;)V
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    return-void
.end method
