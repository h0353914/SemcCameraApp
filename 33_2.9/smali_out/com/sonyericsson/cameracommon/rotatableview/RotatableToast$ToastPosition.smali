.class public final enum Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;
.super Ljava/lang/Enum;
.source "RotatableToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ToastPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

.field public static final enum BOTTOM:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

.field public static final enum CENTER:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

.field public static final enum TOP:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 109
    new-instance v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->TOP:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    .line 110
    new-instance v1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    const-string v3, "CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->CENTER:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    .line 111
    new-instance v3, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    const-string v5, "BOTTOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->BOTTOM:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 108
    sput-object v5, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->$VALUES:[Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;
    .registers 2

    .line 108
    const-class v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;
    .registers 1

    .line 108
    sget-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->$VALUES:[Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    return-object v0
.end method
