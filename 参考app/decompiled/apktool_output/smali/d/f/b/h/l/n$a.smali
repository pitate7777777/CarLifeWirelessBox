.class public Ld/f/b/h/l/n$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/f/b/h/l/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ld/f/b/h/l/n;Ld/f/b/h/d;Ld/f/b/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p1, p2, Ld/f/b/h/d;->F:Ld/f/b/h/c;

    invoke-virtual {p3, p1}, Ld/f/b/d;->o(Ljava/lang/Object;)I

    iget-object p1, p2, Ld/f/b/h/d;->G:Ld/f/b/h/c;

    invoke-virtual {p3, p1}, Ld/f/b/d;->o(Ljava/lang/Object;)I

    iget-object p1, p2, Ld/f/b/h/d;->H:Ld/f/b/h/c;

    invoke-virtual {p3, p1}, Ld/f/b/d;->o(Ljava/lang/Object;)I

    iget-object p1, p2, Ld/f/b/h/d;->I:Ld/f/b/h/c;

    invoke-virtual {p3, p1}, Ld/f/b/d;->o(Ljava/lang/Object;)I

    iget-object p1, p2, Ld/f/b/h/d;->J:Ld/f/b/h/c;

    invoke-virtual {p3, p1}, Ld/f/b/d;->o(Ljava/lang/Object;)I

    return-void
.end method
