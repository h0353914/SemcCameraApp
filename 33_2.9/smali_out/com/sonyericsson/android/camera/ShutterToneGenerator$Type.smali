.class public final enum Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;
.super Ljava/lang/Enum;
.source "ShutterToneGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/ShutterToneGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

.field public static final enum SOUND_AF_SUCCESS:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

.field public static final enum SOUND_BURST_SHUTTER:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

.field public static final enum SOUND_FAST_CAPTURE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

.field public static final enum SOUND_OFF:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

.field public static final enum SOUND_SELFTIMER_10SEC:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

.field public static final enum SOUND_SELFTIMER_3SEC:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mIsCommonSound:Z


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 26
    new-instance v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    const-string v1, "SOUND_AF_SUCCESS"

    const/4 v2, 0x0

    const-string v3, "common/af_success.m4a"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_AF_SUCCESS:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    .line 27
    new-instance v1, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    const-string v3, "SOUND_SELFTIMER_3SEC"

    const-string v5, "common/selftimer_3sec.m4a"

    invoke-direct {v1, v3, v4, v5, v4}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_SELFTIMER_3SEC:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    .line 28
    new-instance v3, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    const-string v5, "SOUND_SELFTIMER_10SEC"

    const/4 v6, 0x2

    const-string v7, "common/selftimer_10sec.m4a"

    invoke-direct {v3, v5, v6, v7, v4}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_SELFTIMER_10SEC:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    .line 29
    new-instance v5, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    const-string v7, "SOUND_OFF"

    const/4 v8, 0x3

    const-string v9, "no_sound.m4a"

    invoke-direct {v5, v7, v8, v9, v2}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v5, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_OFF:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    .line 30
    new-instance v7, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    const-string v9, "SOUND_BURST_SHUTTER"

    const/4 v10, 0x4

    const-string v11, "shutter_done.wav"

    invoke-direct {v7, v9, v10, v11, v2}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v7, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_BURST_SHUTTER:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    .line 31
    new-instance v9, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    const-string v11, "SOUND_FAST_CAPTURE_SHUTTER_DONE"

    const/4 v12, 0x5

    const-string v13, "fastcapture_launch_and_capture_done.wav"

    invoke-direct {v9, v11, v12, v13, v2}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v9, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_FAST_CAPTURE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 25
    sput-object v11, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->$VALUES:[Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->mFileName:Ljava/lang/String;

    .line 37
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->mIsCommonSound:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;
    .registers 2

    .line 25
    const-class v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;
    .registers 1

    .line 25
    sget-object v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->$VALUES:[Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    return-object v0
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public isCommonSound()Z
    .registers 1

    .line 43
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->mIsCommonSound:Z

    return p0
.end method
