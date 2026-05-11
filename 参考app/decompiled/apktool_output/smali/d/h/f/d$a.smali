.class public Ld/h/f/d$a;
.super Ld/h/i/i;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/h/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ld/h/e/b/h$c;


# direct methods
.method public constructor <init>(Ld/h/e/b/h$c;)V
    .locals 0

    invoke-direct {p0}, Ld/h/i/i;-><init>()V

    iput-object p1, p0, Ld/h/f/d$a;->a:Ld/h/e/b/h$c;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Ld/h/f/d$a;->a:Ld/h/e/b/h$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ld/h/e/b/h$c;->d(I)V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Ld/h/f/d$a;->a:Ld/h/e/b/h$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ld/h/e/b/h$c;->e(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
