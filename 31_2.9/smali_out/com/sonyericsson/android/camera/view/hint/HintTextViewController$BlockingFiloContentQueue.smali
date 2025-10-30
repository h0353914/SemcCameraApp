.class Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$BlockingFiloContentQueue;
.super Ljava/util/concurrent/PriorityBlockingQueue;
.source "HintTextViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlockingFiloContentQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/PriorityBlockingQueue<",
        "Lcom/sonyericsson/android/camera/view/hint/HintTextContent;",
        ">;"
    }
.end annotation


# static fields
.field private static final sSequentialIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/view/hint/HintTextContent;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCount:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 111
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$BlockingFiloContentQueue;->sSequentialIndexMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 117
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$BlockingFiloContentQueue$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$BlockingFiloContentQueue$1;-><init>()V

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    .line 130
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$BlockingFiloContentQueue;->sSequentialIndexMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method static synthetic access$200()Ljava/util/Map;
    .registers 1

    .line 95
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$BlockingFiloContentQueue;->sSequentialIndexMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 148
    invoke-super {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    .line 149
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$BlockingFiloContentQueue;->sSequentialIndexMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    .line 150
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$BlockingFiloContentQueue;->mCount:J

    return-void
.end method

.method public offer(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z
    .registers 7

    .line 135
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$BlockingFiloContentQueue;->sSequentialIndexMap:Ljava/util/Map;

    iget-wide v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$BlockingFiloContentQueue;->mCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$BlockingFiloContentQueue;->mCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-super {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .registers 2

    .line 95
    check-cast p1, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$BlockingFiloContentQueue;->offer(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z

    move-result p1

    return p1
.end method

.method public poll()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
    .registers 3

    .line 141
    invoke-super {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    .line 142
    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$BlockingFiloContentQueue;->sSequentialIndexMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .registers 2

    .line 95
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$BlockingFiloContentQueue;->poll()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object v0

    return-object v0
.end method
