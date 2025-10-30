.class public final enum Lcom/sonyericsson/cameracommon/focusview/RectangleColor;
.super Ljava/lang/Enum;
.source "RectangleColor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/focusview/RectangleColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

.field public static final enum AF_FAIL:Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

.field public static final enum AF_SUCCESS:Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

.field public static final enum NORMAL:Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

.field public static final enum RECORDING:Lcom/sonyericsson/cameracommon/focusview/RectangleColor;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 12
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;->NORMAL:Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    .line 13
    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    const-string v3, "AF_SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;->AF_SUCCESS:Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    .line 14
    new-instance v3, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    const-string v5, "AF_FAIL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;->AF_FAIL:Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    .line 15
    new-instance v5, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    const-string v7, "RECORDING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;->RECORDING:Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 11
    sput-object v7, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;->$VALUES:[Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/focusview/RectangleColor;
    .registers 2

    .line 11
    const-class v0, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/focusview/RectangleColor;
    .registers 1

    .line 11
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;->$VALUES:[Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/focusview/RectangleColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    return-object v0
.end method
