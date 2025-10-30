.class public final synthetic Lao;
.super Ljava/lang/Object;

# interfaces
.implements Lap;


# instance fields
.field private final a:Laq;

.field private final b:Lap;


# direct methods
.method public constructor <init>(Laq;Lap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lao;->a:Laq;

    iput-object p2, p0, Lao;->b:Lap;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 5

    iget-object p1, p0, Lao;->a:Laq;

    iget-object v0, p0, Lao;->b:Lap;

    .line 1
    invoke-static {}, Leb;->c()V

    iget-object v1, p1, Laq;->a:Las;

    .line 2
    invoke-interface {v1}, Las;->c()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object p1, p1, Laq;->a:Las;

    .line 3
    invoke-interface {p1}, Las;->e()I

    move-result p1

    goto :goto_30

    .line 4
    :cond_16
    invoke-virtual {p1}, Laq;->c()Lz;

    move-result-object v1

    iget v2, v1, Lz;->a:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2e

    iget-object p1, p1, Laq;->a:Las;

    .line 5
    invoke-interface {p1}, Las;->b()I

    move-result p1

    iget v1, v1, Lz;->b:I

    if-ge p1, v1, :cond_2b

    goto :goto_2e

    .line 7
    :cond_2b
    sget p1, Lbh;->b:I

    goto :goto_30

    .line 6
    :cond_2e
    :goto_2e
    sget p1, Lbh;->l:I

    .line 8
    :goto_30
    invoke-interface {v0, p1}, Lap;->a(I)V

    return-void
.end method
