.class final Lfe;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final synthetic a:Lck;


# direct methods
.method public constructor <init>(Lck;)V
    .registers 2

    iput-object p1, p0, Lfe;->a:Lck;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lfe;->a:Lck;

    .line 2
    invoke-virtual {v0}, Lck;->a()I

    move-result v0

    return v0
.end method
