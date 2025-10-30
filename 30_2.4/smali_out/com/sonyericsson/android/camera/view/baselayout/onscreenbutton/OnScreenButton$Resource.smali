.class public Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;
.super Ljava/lang/Object;
.source "OnScreenButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resource"
.end annotation


# static fields
.field public static final NONE:I = -0x1


# instance fields
.field final mBackground:I

.field final mDescription:I

.field final mIcon:I

.field final mIconPortrait:I

.field final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .registers 6

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mIcon:I

    .line 70
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mIconPortrait:I

    .line 71
    iput p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mBackground:I

    .line 72
    iput p4, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mDescription:I

    .line 73
    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getBackgroundResource()I
    .registers 2

    .line 93
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mBackground:I

    return v0
.end method

.method getDescription(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 97
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mDescription:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 98
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mText:Ljava/lang/String;

    if-eqz p1, :cond_a

    return-object p1

    :cond_a
    const-string p1, ""

    return-object p1

    .line 104
    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mDescription:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getIconResource(I)I
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 82
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mIcon:I

    return p1

    .line 84
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->shouldRotateByView()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 85
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mIcon:I

    return p1

    .line 87
    :cond_f
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mIconPortrait:I

    return p1
.end method

.method shouldRotateByView()Z
    .registers 3

    .line 77
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mIconPortrait:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
