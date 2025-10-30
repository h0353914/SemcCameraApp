.class public final enum Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;
.super Ljava/lang/Enum;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoFocusViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

.field public static final enum MULTI:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

.field public static final enum SINGLE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 172
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;->SINGLE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

    .line 173
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

    const-string v1, "MULTI"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;->MULTI:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

    const/4 v0, 0x2

    .line 171
    new-array v0, v0, [Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;->SINGLE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;->MULTI:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;->$VALUES:[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;
    .registers 2

    .line 171
    const-class v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;
    .registers 1

    .line 171
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;->$VALUES:[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

    return-object v0
.end method
