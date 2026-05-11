.class public Ld/h/i/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ld/h/i/i;

.field public final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ld/h/i/i;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/h/i/c;->a:Ld/h/i/i;

    iput-object p2, p0, Ld/h/i/c;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Ld/h/i/f$e;)V
    .locals 3

    .line 1
    iget v0, p1, Ld/h/i/f$e;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p1, Ld/h/i/f$e;->a:Landroid/graphics/Typeface;

    .line 3
    iget-object v0, p0, Ld/h/i/c;->a:Ld/h/i/i;

    iget-object v1, p0, Ld/h/i/c;->b:Landroid/os/Handler;

    new-instance v2, Ld/h/i/a;

    invoke-direct {v2, p0, v0, p1}, Ld/h/i/a;-><init>(Ld/h/i/c;Ld/h/i/i;Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 4
    :cond_1
    iget p1, p1, Ld/h/i/f$e;->b:I

    .line 5
    iget-object v0, p0, Ld/h/i/c;->a:Ld/h/i/i;

    iget-object v1, p0, Ld/h/i/c;->b:Landroid/os/Handler;

    new-instance v2, Ld/h/i/b;

    invoke-direct {v2, p0, v0, p1}, Ld/h/i/b;-><init>(Ld/h/i/c;Ld/h/i/i;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method
