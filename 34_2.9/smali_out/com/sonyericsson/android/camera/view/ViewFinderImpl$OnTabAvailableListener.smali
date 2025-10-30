.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnTabAvailableListener;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTabAvailableListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .registers 2

    .line 11466
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnTabAvailableListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnTabAvailableListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnTabAvailableListener;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method


# virtual methods
.method public onTabNotAvailable(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V
    .registers 3

    .line 11470
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne p1, v0, :cond_10

    .line 11471
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnTabAvailableListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    new-instance p1, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;

    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->EV_NOT_AVAILABLE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)V

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mpostTopHintText(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    :cond_10
    return-void
.end method
