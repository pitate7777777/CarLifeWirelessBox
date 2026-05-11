.class public Ld/h/i/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ld/h/i/i;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Ld/h/i/c;Ld/h/i/i;I)V
    .locals 0

    iput-object p2, p0, Ld/h/i/b;->e:Ld/h/i/i;

    iput p3, p0, Ld/h/i/b;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ld/h/i/b;->e:Ld/h/i/i;

    iget v1, p0, Ld/h/i/b;->f:I

    invoke-virtual {v0, v1}, Ld/h/i/i;->a(I)V

    return-void
.end method
