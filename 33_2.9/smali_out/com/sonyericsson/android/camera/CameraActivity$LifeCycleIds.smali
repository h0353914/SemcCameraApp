.class public final enum Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;
.super Ljava/lang/Enum;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LifeCycleIds"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

.field public static final enum ON_CREATE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

.field public static final enum ON_DESTROY:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

.field public static final enum ON_PAUSE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

.field public static final enum ON_RESTART:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

.field public static final enum ON_RESUME:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

.field public static final enum ON_START:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

.field public static final enum ON_STOP:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;


# instance fields
.field private final mLog:Ljava/lang/String;

.field private final mPerformanceIds:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 406
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_CREATE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v2, "ON_CREATE"

    const/4 v3, 0x0

    const-string v4, "onCreate()"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_CREATE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    .line 409
    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v4, "ON_START"

    const/4 v5, 0x1

    const-string v6, "onStart()"

    invoke-direct {v1, v4, v5, v2, v6}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_START:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    .line 412
    new-instance v2, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    sget-object v4, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_RESTART:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v6, "ON_RESTART"

    const/4 v7, 0x2

    const-string v8, "onRestart()"

    invoke-direct {v2, v6, v7, v4, v8}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v2, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_RESTART:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    .line 415
    new-instance v4, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    sget-object v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_RESUME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v8, "ON_RESUME"

    const/4 v9, 0x3

    const-string v10, "onResume()"

    invoke-direct {v4, v8, v9, v6, v10}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v4, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_RESUME:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    .line 418
    new-instance v6, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    sget-object v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_PAUSE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v10, "ON_PAUSE"

    const/4 v11, 0x4

    const-string v12, "onPause()"

    invoke-direct {v6, v10, v11, v8, v12}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    .line 421
    new-instance v8, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    sget-object v10, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_STOP:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v12, "ON_STOP"

    const/4 v13, 0x5

    const-string v14, "onStop()"

    invoke-direct {v8, v12, v13, v10, v14}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v8, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_STOP:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    .line 424
    new-instance v10, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    sget-object v12, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_DESTROY:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v14, "ON_DESTROY"

    const/4 v15, 0x6

    const-string v13, "onDestroy()"

    invoke-direct {v10, v14, v15, v12, v13}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v10, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    const/4 v12, 0x7

    new-array v12, v12, [Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    aput-object v0, v12, v3

    aput-object v1, v12, v5

    aput-object v2, v12, v7

    aput-object v4, v12, v9

    aput-object v6, v12, v11

    const/4 v0, 0x5

    aput-object v8, v12, v0

    aput-object v10, v12, v15

    .line 405
    sput-object v12, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->$VALUES:[Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 434
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 435
    iput-object p3, p0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->mPerformanceIds:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 436
    iput-object p4, p0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->mLog:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4400(Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    .registers 1

    .line 405
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->mPerformanceIds:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;
    .registers 2

    .line 405
    const-class v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;
    .registers 1

    .line 405
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->$VALUES:[Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    .line 441
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->mLog:Ljava/lang/String;

    return-object p0
.end method
