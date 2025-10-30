.class final enum Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;
.super Ljava/lang/Enum;
.source "GestureShutterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/GestureShutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AnimationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

.field public static final enum IDLE:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

.field public static final enum PROCEEDING:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

.field public static final enum REWINDING:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;


# instance fields
.field final sign:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 25
    new-instance v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;->IDLE:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    .line 26
    new-instance v1, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    const-string v3, "PROCEEDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;->PROCEEDING:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    .line 27
    new-instance v3, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    const-string v5, "REWINDING"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v3, v5, v6, v7}, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;->REWINDING:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 24
    sput-object v5, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;->$VALUES:[Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;->sign:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;
    .registers 2

    .line 24
    const-class v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;
    .registers 1

    .line 24
    sget-object v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;->$VALUES:[Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    return-object v0
.end method
