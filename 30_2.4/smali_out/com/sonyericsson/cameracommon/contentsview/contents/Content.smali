.class public Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
.super Ljava/lang/Object;
.source "Content.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/contentsview/contents/optionmenu/OptionOperating;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;,
        Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Content"


# instance fields
.field protected mCountText:Ljava/lang/String;

.field private final mExtraIconId:I

.field protected final mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

.field private final mPlayableIconId:I


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;II)V
    .registers 4

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .line 132
    iput p2, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mExtraIconId:I

    .line 133
    iput p3, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mPlayableIconId:I

    return-void
.end method


# virtual methods
.method public getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    return-object v0
.end method

.method public getCountText()Ljava/lang/String;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mCountText:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraIconResourceId()I
    .registers 2

    .line 162
    iget v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mExtraIconId:I

    return v0
.end method

.method public getPlayIconResourceId()I
    .registers 2

    .line 166
    iget v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mPlayableIconId:I

    return v0
.end method

.method public isMediaDataVerified()Z
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsMediaDataVerified:Z

    return v0
.end method

.method public shouldShowExtraIcon()Z
    .registers 3

    .line 158
    iget v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mExtraIconId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public shouldShowPlayableIcon()Z
    .registers 3

    .line 151
    iget v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mPlayableIconId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public viewContent(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
