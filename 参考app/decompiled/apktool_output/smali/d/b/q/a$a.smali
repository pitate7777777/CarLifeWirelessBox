.class public Ld/b/q/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/h/l/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/q/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public final synthetic c:Ld/b/q/a;


# direct methods
.method public constructor <init>(Ld/b/q/a;)V
    .locals 0

    iput-object p1, p0, Ld/b/q/a$a;->c:Ld/b/q/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld/b/q/a$a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-boolean p1, p0, Ld/b/q/a$a;->a:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Ld/b/q/a$a;->c:Ld/b/q/a;

    const/4 v0, 0x0

    iput-object v0, p1, Ld/b/q/a;->j:Ld/h/l/s;

    iget v0, p0, Ld/b/q/a$a;->b:I

    invoke-static {p1, v0}, Ld/b/q/a;->b(Ld/b/q/a;I)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ld/b/q/a$a;->c:Ld/b/q/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ld/b/q/a;->a(Ld/b/q/a;I)V

    iput-boolean v0, p0, Ld/b/q/a$a;->a:Z

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/b/q/a$a;->a:Z

    return-void
.end method
