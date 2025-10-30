.class public Lcom/sonyericsson/cameracommon/utility/AccessibilityEventFilter;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityEventFilter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AccessibilityEventFilter"


# instance fields
.field private mAllowedClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/AccessibilityEventFilter;->mAllowedClassName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/AccessibilityEventFilter;->mAllowedClassName:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/utility/AccessibilityEventFilter;->mAllowedClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 8

    .line 56
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_16

    const/high16 v3, 0x10000

    if-eq v0, v3, :cond_16

    const v3, 0x8000

    if-ne v0, v3, :cond_14

    goto :goto_16

    :cond_14
    move v0, v2

    goto :goto_17

    :cond_16
    :goto_16
    move v0, v1

    .line 65
    :goto_17
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v3

    if-gtz v3, :cond_30

    .line 66
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 67
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2e

    goto :goto_30

    :cond_2e
    move v3, v2

    goto :goto_31

    :cond_30
    :goto_30
    move v3, v1

    :goto_31
    if-nez v0, :cond_35

    if-eqz v3, :cond_64

    .line 73
    :cond_35
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/AccessibilityEventFilter;->mAllowedClassName:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 74
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_63

    new-array p0, v1, [Ljava/lang/String;

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onRequestSendAccessibilityEvent: This event should be ignored. Ignored event = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 77
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    .line 75
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_63
    return v2

    .line 83
    :cond_64
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method
