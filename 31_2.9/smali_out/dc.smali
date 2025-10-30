.class public abstract Ldc;
.super Lde;
.source "PG"

# interfaces
.implements Lei;


# instance fields
.field public d:Lcu;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lde;-><init>()V

    .line 2
    sget-object v0, Lcu;->c:Lcu;

    iput-object v0, p0, Ldc;->d:Lcu;

    return-void
.end method


# virtual methods
.method public final a(Lcq;)V
    .registers 3

    iget-object p1, p1, Lcq;->a:Leh;

    const/4 v0, 0x6

    .line 4
    invoke-virtual {p0, v0}, Lde;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde;

    if-ne p1, v0, :cond_c

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final d()Lcu;
    .registers 3

    iget-object v0, p0, Ldc;->d:Lcu;

    iget-boolean v1, v0, Lcu;->b:Z

    if-eqz v1, :cond_c

    .line 3
    invoke-virtual {v0}, Lcu;->c()Lcu;

    move-result-object v0

    iput-object v0, p0, Ldc;->d:Lcu;

    :cond_c
    iget-object v0, p0, Ldc;->d:Lcu;

    return-object v0
.end method
