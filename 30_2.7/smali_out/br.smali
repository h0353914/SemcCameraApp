.class public final Lbr;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lbs;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbs;

    .line 2
    invoke-direct {v0}, Lbs;-><init>()V

    iput-object v0, p0, Lbr;->a:Lbs;

    return-void
.end method

.method public constructor <init>(Lbs;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr;->a:Lbs;

    return-void
.end method


# virtual methods
.method public final a()Lbs;
    .registers 3

    iget-object v0, p0, Lbr;->a:Lbs;

    iget-object v1, v0, Lbs;->a:Landroid/net/Uri;

    if-eqz v1, :cond_13

    iget-object v1, v0, Lbs;->b:Landroid/graphics/Bitmap;

    if-nez v1, :cond_b

    goto :goto_13

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set both Bitmap and Bitmap URI."

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_13
    return-object v0
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object v0, p0, Lbr;->a:Lbs;

    iput-object p1, v0, Lbs;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final a(Ljava/lang/Long;)V
    .registers 3

    iget-object v0, p0, Lbr;->a:Lbs;

    iput-object p1, v0, Lbs;->c:Ljava/lang/Long;

    return-void
.end method
