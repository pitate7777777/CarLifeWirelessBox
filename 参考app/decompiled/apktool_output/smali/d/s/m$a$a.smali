.class public Ld/s/m$a$a;
.super Ld/s/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/s/m$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/e/a;

.field public final synthetic b:Ld/s/m$a;


# direct methods
.method public constructor <init>(Ld/s/m$a;Ld/e/a;)V
    .locals 0

    iput-object p1, p0, Ld/s/m$a$a;->b:Ld/s/m$a;

    iput-object p2, p0, Ld/s/m$a$a;->a:Ld/e/a;

    invoke-direct {p0}, Ld/s/l;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ld/s/i;)V
    .locals 2

    iget-object v0, p0, Ld/s/m$a$a;->a:Ld/e/a;

    iget-object v1, p0, Ld/s/m$a$a;->b:Ld/s/m$a;

    iget-object v1, v1, Ld/s/m$a;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ld/e/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Ld/s/i;->w(Ld/s/i$d;)Ld/s/i;

    return-void
.end method
