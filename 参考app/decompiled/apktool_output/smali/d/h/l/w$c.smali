.class public Ld/h/l/w$c;
.super Ld/h/l/w$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/h/l/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final b:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ld/h/l/w$e;-><init>()V

    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, Ld/h/l/w$c;->b:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(Ld/h/l/w;)V
    .locals 1

    invoke-direct {p0, p1}, Ld/h/l/w$e;-><init>(Ld/h/l/w;)V

    invoke-virtual {p1}, Ld/h/l/w;->h()Landroid/view/WindowInsets;

    move-result-object p1

    new-instance v0, Landroid/view/WindowInsets$Builder;

    if-eqz p1, :cond_0

    invoke-direct {v0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    :goto_0
    iput-object v0, p0, Ld/h/l/w$c;->b:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public a()Ld/h/l/w;
    .locals 3

    iget-object v0, p0, Ld/h/l/w$c;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {v0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Ld/h/l/w;->i(Landroid/view/WindowInsets;)Ld/h/l/w;

    move-result-object v0

    .line 1
    iget-object v1, v0, Ld/h/l/w;->a:Ld/h/l/w$k;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ld/h/l/w$k;->l([Ld/h/f/b;)V

    return-object v0
.end method

.method public b(Ld/h/f/b;)V
    .locals 1

    iget-object v0, p0, Ld/h/l/w$c;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Ld/h/f/b;->c()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public c(Ld/h/f/b;)V
    .locals 1

    iget-object v0, p0, Ld/h/l/w$c;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Ld/h/f/b;->c()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method
