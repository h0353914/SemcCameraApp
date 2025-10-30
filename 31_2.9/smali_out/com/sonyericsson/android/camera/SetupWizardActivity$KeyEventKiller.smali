.class Lcom/sonyericsson/android/camera/SetupWizardActivity$KeyEventKiller;
.super Ljava/lang/Object;
.source "SetupWizardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/SetupWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyEventKiller"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/SetupWizardActivity$1;)V
    .registers 2

    .line 681
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$KeyEventKiller;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 p1, 0x1b

    if-eq p2, p1, :cond_e

    const/16 p1, 0x50

    if-eq p2, p1, :cond_e

    const/16 p1, 0x52

    if-eq p2, p1, :cond_e

    const/4 p1, 0x0

    return p1

    :cond_e
    const/4 p1, 0x1

    return p1
.end method
