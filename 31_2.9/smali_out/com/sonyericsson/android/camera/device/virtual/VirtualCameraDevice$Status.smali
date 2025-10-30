.class final enum Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;
.super Ljava/lang/Enum;
.source "VirtualCameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

.field public static final enum Closed:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

.field public static final enum Closing:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

.field public static final enum Error:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

.field public static final enum Opened:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

.field public static final enum Opening:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

.field public static final enum Ready:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 62
    new-instance v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    const-string v1, "Closed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Closed:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    new-instance v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    const-string v1, "Closing"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Closing:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    new-instance v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    const-string v1, "Opened"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Opened:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    new-instance v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    const-string v1, "Opening"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Opening:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    new-instance v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    const-string v1, "Ready"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Ready:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    new-instance v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    const-string v1, "Error"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Error:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    const/4 v0, 0x6

    .line 61
    new-array v0, v0, [Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    sget-object v1, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Closed:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Closing:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Opened:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Opening:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Ready:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Error:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->$VALUES:[Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;
    .registers 2

    .line 61
    const-class v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;
    .registers 1

    .line 61
    sget-object v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->$VALUES:[Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    return-object v0
.end method
