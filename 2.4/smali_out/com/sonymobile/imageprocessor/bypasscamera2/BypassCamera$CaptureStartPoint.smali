.class public final enum Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;
.super Ljava/lang/Enum;
.source "BypassCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaptureStartPoint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

.field public static final enum ALREADY_DONE:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

.field public static final enum INVALID:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

.field public static final enum ON_REQUEST:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 109
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    const-string v1, "ALREADY_DONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->ALREADY_DONE:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    .line 110
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    const-string v1, "ON_REQUEST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->ON_REQUEST:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    .line 111
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    const-string v1, "INVALID"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->INVALID:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    const/4 v0, 0x3

    .line 108
    new-array v0, v0, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    sget-object v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->ALREADY_DONE:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->ON_REQUEST:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->INVALID:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->$VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;
    .registers 2

    .line 108
    const-class v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;
    .registers 1

    .line 108
    sget-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->$VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    invoke-virtual {v0}, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    return-object v0
.end method
