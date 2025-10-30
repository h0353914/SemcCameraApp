.class public final enum Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;
.super Ljava/lang/Enum;
.source "MultiAutoFocusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FocusState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;

.field public static final enum FOCUSDONE:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;

.field public static final enum FOCUSING:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;

.field public static final enum NORMAL:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 31
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;->NORMAL:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;

    .line 32
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;

    const-string v1, "FOCUSING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;->FOCUSING:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;

    .line 33
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;

    const-string v1, "FOCUSDONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;->FOCUSDONE:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;

    const/4 v0, 0x3

    .line 30
    new-array v0, v0, [Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;->NORMAL:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;->FOCUSING:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;->FOCUSDONE:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;->$VALUES:[Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;
    .registers 2

    .line 30
    const-class v0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;
    .registers 1

    .line 30
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;->$VALUES:[Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;

    return-object v0
.end method
