.class final synthetic Lax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lba;

.field private final b:Lg;


# direct methods
.method public constructor <init>(Lba;Lg;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lax;->a:Lba;

    iput-object p2, p0, Lax;->b:Lg;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lax;->a:Lba;

    iget-object v1, p0, Lax;->b:Lg;

    .line 1
    invoke-virtual {v0, v1}, Lba;->a(Lg;)V

    return-void
.end method
