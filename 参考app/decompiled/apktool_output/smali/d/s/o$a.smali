.class public Ld/s/o$a;
.super Ld/s/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/s/o;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/s/i;


# direct methods
.method public constructor <init>(Ld/s/o;Ld/s/i;)V
    .locals 0

    iput-object p2, p0, Ld/s/o$a;->a:Ld/s/i;

    invoke-direct {p0}, Ld/s/l;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ld/s/i;)V
    .locals 1

    iget-object v0, p0, Ld/s/o$a;->a:Ld/s/i;

    invoke-virtual {v0}, Ld/s/i;->z()V

    invoke-virtual {p1, p0}, Ld/s/i;->w(Ld/s/i$d;)Ld/s/i;

    return-void
.end method
