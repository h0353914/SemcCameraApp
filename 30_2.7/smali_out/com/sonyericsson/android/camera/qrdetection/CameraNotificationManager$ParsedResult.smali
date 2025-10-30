.class Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;
.super Ljava/lang/Object;
.source "CameraNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParsedResult"
.end annotation


# instance fields
.field private mParsedHidden:Z

.field private mParsedNetworkEncryption:Ljava/lang/String;

.field private mParsedPassword:Ljava/lang/String;

.field private mParsedSsid:Ljava/lang/String;

.field private mParsedType:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

.field private mParsedUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;)V
    .registers 3

    .line 292
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 286
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedUrl:Ljava/lang/String;

    .line 287
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedSsid:Ljava/lang/String;

    .line 288
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedNetworkEncryption:Ljava/lang/String;

    .line 289
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedPassword:Ljava/lang/String;

    const/4 p1, 0x1

    .line 290
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedHidden:Z

    .line 293
    iput-object p2, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedType:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$1;)V
    .registers 4

    .line 283
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;)V

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;)V
    .registers 4

    .line 296
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 286
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedUrl:Ljava/lang/String;

    .line 287
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedSsid:Ljava/lang/String;

    .line 288
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedNetworkEncryption:Ljava/lang/String;

    .line 289
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedPassword:Ljava/lang/String;

    const/4 p1, 0x1

    .line 290
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedHidden:Z

    .line 297
    iput-object p2, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedUrl:Ljava/lang/String;

    .line 298
    iput-object p3, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedType:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$1;)V
    .registers 5

    .line 283
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;)V

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;)V
    .registers 7

    .line 302
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 286
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedUrl:Ljava/lang/String;

    .line 287
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedSsid:Ljava/lang/String;

    .line 288
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedNetworkEncryption:Ljava/lang/String;

    .line 289
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedPassword:Ljava/lang/String;

    const/4 p1, 0x1

    .line 290
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedHidden:Z

    .line 303
    iput-object p3, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedSsid:Ljava/lang/String;

    .line 304
    iput-object p2, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedNetworkEncryption:Ljava/lang/String;

    .line 305
    iput-object p4, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedPassword:Ljava/lang/String;

    .line 306
    iput-boolean p5, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedHidden:Z

    .line 307
    iput-object p6, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedType:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$1;)V
    .registers 8

    .line 283
    invoke-direct/range {p0 .. p6}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;
    .registers 1

    .line 283
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->geUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;
    .registers 1

    .line 283
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->getPassword()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Z
    .registers 1

    .line 283
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->isHidden()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;
    .registers 1

    .line 283
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->geParsedResultType()Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;
    .registers 1

    .line 283
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->getNetworkEncryption()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;
    .registers 1

    .line 283
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->getSsid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private geParsedResultType()Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;
    .registers 2

    .line 327
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedType:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    return-object v0
.end method

.method private geUrl()Ljava/lang/String;
    .registers 2

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedUrl:Ljava/lang/String;

    return-object v0
.end method

.method private getNetworkEncryption()Ljava/lang/String;
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedNetworkEncryption:Ljava/lang/String;

    return-object v0
.end method

.method private getPassword()Ljava/lang/String;
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedPassword:Ljava/lang/String;

    return-object v0
.end method

.method private getSsid()Ljava/lang/String;
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedSsid:Ljava/lang/String;

    return-object v0
.end method

.method private isHidden()Z
    .registers 2

    .line 323
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedHidden:Z

    return v0
.end method
