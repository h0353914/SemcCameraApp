.class public final enum Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;
.super Ljava/lang/Enum;
.source "UserEventHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UiComponent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;",
        ">;",
        "Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

.field public static final enum ANGLE_CHANGE_BUTTON:Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

.field public static final enum CAPTURE_AREA:Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

.field public static final enum PREDICTIVE_LAUNCH_COVER:Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 188
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    const-string v1, "CAPTURE_AREA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;->CAPTURE_AREA:Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    .line 190
    new-instance v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    const-string v3, "ANGLE_CHANGE_BUTTON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;->ANGLE_CHANGE_BUTTON:Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    .line 192
    new-instance v3, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    const-string v5, "PREDICTIVE_LAUNCH_COVER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;->PREDICTIVE_LAUNCH_COVER:Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 187
    sput-object v5, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;->$VALUES:[Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 187
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;
    .registers 2

    .line 187
    const-class v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;
    .registers 1

    .line 187
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;->$VALUES:[Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    return-object v0
.end method
