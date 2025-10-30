.class public Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder$KeyEventKiller;
.super Ljava/lang/Object;
.source "MessageDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "KeyEventKiller"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 p0, 0x1b

    if-eq p2, p0, :cond_e

    const/16 p0, 0x50

    if-eq p2, p0, :cond_e

    const/16 p0, 0x52

    if-eq p2, p0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    const/4 p0, 0x1

    return p0
.end method
