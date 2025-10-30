.class public final enum Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;
.super Ljava/lang/Enum;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreProcessState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

.field public static final enum NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

.field public static final enum PRE_CAPTURE_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

.field public static final enum PRE_CAPTURE_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

.field public static final enum PRE_CAPTURE_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

.field public static final enum PRE_SCAN_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

.field public static final enum PRE_SCAN_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

.field public static final enum PRE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 257
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    .line 258
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    const-string v3, "PRE_SCAN_STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SCAN_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    .line 259
    new-instance v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    const-string v5, "PRE_SCAN_DONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SCAN_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    .line 260
    new-instance v5, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    const-string v7, "PRE_CAPTURE_STARTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    .line 261
    new-instance v7, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    const-string v9, "PRE_SHUTTER_DONE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    .line 262
    new-instance v9, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    const-string v11, "PRE_CAPTURE_DONE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    .line 263
    new-instance v11, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    const-string v13, "PRE_CAPTURE_RELEASED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 256
    sput-object v13, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 256
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;
    .registers 2

    .line 256
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;
    .registers 1

    .line 256
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    return-object v0
.end method
