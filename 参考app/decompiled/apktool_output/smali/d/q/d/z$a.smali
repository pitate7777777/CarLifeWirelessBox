.class public Ld/q/d/z$a;
.super Landroidx/recyclerview/widget/RecyclerView$q;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/q/d/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Ld/q/d/z;


# direct methods
.method public constructor <init>(Ld/q/d/z;)V
    .locals 0

    iput-object p1, p0, Ld/q/d/z$a;->b:Ld/q/d/z;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$q;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld/q/d/z$a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-nez p2, :cond_0

    iget-boolean p1, p0, Ld/q/d/z$a;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld/q/d/z$a;->a:Z

    iget-object p1, p0, Ld/q/d/z$a;->b:Ld/q/d/z;

    invoke-virtual {p1}, Ld/q/d/z;->b()V

    :cond_0
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/q/d/z$a;->a:Z

    :cond_1
    return-void
.end method
