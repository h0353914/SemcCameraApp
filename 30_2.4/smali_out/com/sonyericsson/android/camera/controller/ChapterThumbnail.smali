.class public Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;
.super Ljava/lang/Object;
.source "ChapterThumbnail.java"


# instance fields
.field public final format:Ljava/lang/Integer;

.field private mOrientation:I

.field public final rect:Landroid/graphics/Rect;

.field public final yuvData:[B


# direct methods
.method public constructor <init>([BLjava/lang/Integer;Landroid/graphics/Rect;)V
    .registers 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;->yuvData:[B

    .line 27
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;->format:Ljava/lang/Integer;

    .line 28
    iput-object p3, p0, Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;->rect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;->mOrientation:I

    return-void
.end method


# virtual methods
.method public orientation()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;->mOrientation:I

    return v0
.end method

.method public setOrientation(I)V
    .registers 2

    .line 37
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/ChapterThumbnail;->mOrientation:I

    return-void
.end method
