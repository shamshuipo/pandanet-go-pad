.class Lbe/gentgo/tetsuki/LoadMemberPageTask;
.super Landroid/os/AsyncTask;
.source "LoadMemberPageTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field dialog:Landroid/app/ProgressDialog;

.field private logon:Ljava/lang/String;

.field private page:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private player:Ljava/lang/String;

.field private webFragment:Lbe/gentgo/tetsuki/WebFragment;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbe/gentgo/tetsuki/WebFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "con"    # Landroid/content/Context;
    .param p2, "f"    # Lbe/gentgo/tetsuki/WebFragment;
    .param p3, "l"    # Ljava/lang/String;
    .param p4, "pass"    # Ljava/lang/String;
    .param p5, "pg"    # Ljava/lang/String;
    .param p6, "pl"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
    iput-object p2, p0, Lbe/gentgo/tetsuki/LoadMemberPageTask;->webFragment:Lbe/gentgo/tetsuki/WebFragment;

    .line 40
    iput-object p1, p0, Lbe/gentgo/tetsuki/LoadMemberPageTask;->context:Landroid/content/Context;

    .line 41
    iput-object p3, p0, Lbe/gentgo/tetsuki/LoadMemberPageTask;->logon:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lbe/gentgo/tetsuki/LoadMemberPageTask;->password:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lbe/gentgo/tetsuki/LoadMemberPageTask;->page:Ljava/lang/String;

    .line 44
    iput-object p6, p0, Lbe/gentgo/tetsuki/LoadMemberPageTask;->player:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static makeForDailyProblem(Landroid/content/Context;Lbe/gentgo/tetsuki/WebFragment;Ljava/lang/String;Ljava/lang/String;)Lbe/gentgo/tetsuki/LoadMemberPageTask;
    .locals 7
    .param p0, "con"    # Landroid/content/Context;
    .param p1, "frag"    # Lbe/gentgo/tetsuki/WebFragment;
    .param p2, "logon"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v0, Lbe/gentgo/tetsuki/LoadMemberPageTask;

    const-string v5, "Daily"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lbe/gentgo/tetsuki/LoadMemberPageTask;-><init>(Landroid/content/Context;Lbe/gentgo/tetsuki/WebFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makeForMyGames(Landroid/content/Context;Lbe/gentgo/tetsuki/WebFragment;Ljava/lang/String;Ljava/lang/String;)Lbe/gentgo/tetsuki/LoadMemberPageTask;
    .locals 7
    .param p0, "con"    # Landroid/content/Context;
    .param p1, "frag"    # Lbe/gentgo/tetsuki/WebFragment;
    .param p2, "logon"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v0, Lbe/gentgo/tetsuki/LoadMemberPageTask;

    const-string v5, "SearchResult"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lbe/gentgo/tetsuki/LoadMemberPageTask;-><init>(Landroid/content/Context;Lbe/gentgo/tetsuki/WebFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makeForMyProgress(Landroid/content/Context;Lbe/gentgo/tetsuki/WebFragment;Ljava/lang/String;Ljava/lang/String;)Lbe/gentgo/tetsuki/LoadMemberPageTask;
    .locals 7
    .param p0, "con"    # Landroid/content/Context;
    .param p1, "frag"    # Lbe/gentgo/tetsuki/WebFragment;
    .param p2, "logon"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v0, Lbe/gentgo/tetsuki/LoadMemberPageTask;

    const-string v5, "Karte"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lbe/gentgo/tetsuki/LoadMemberPageTask;-><init>(Landroid/content/Context;Lbe/gentgo/tetsuki/WebFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makeForPlayerPage(Landroid/content/Context;Lbe/gentgo/tetsuki/WebFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbe/gentgo/tetsuki/LoadMemberPageTask;
    .locals 7
    .param p0, "con"    # Landroid/content/Context;
    .param p1, "frag"    # Lbe/gentgo/tetsuki/WebFragment;
    .param p2, "logon"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "player"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Lbe/gentgo/tetsuki/LoadMemberPageTask;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lbe/gentgo/tetsuki/LoadMemberPageTask;-><init>(Landroid/content/Context;Lbe/gentgo/tetsuki/WebFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lbe/gentgo/tetsuki/LoadMemberPageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 24
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 60
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/LoadMemberPageTask;->page:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 61
    new-instance v19, Ljava/net/URL;

    const-string v20, "http://my.pandanet.co.jp/cgi-bin/cgi.exe?PG"

    invoke-direct/range {v19 .. v20}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 62
    .local v4, "con":Ljava/net/HttpURLConnection;
    const-string v19, "POST"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 63
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 64
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 65
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "_PageKey=MH&pg="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/LoadMemberPageTask;->page:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "&membno=TetsukiSerialMembNo&userid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/LoadMemberPageTask;->logon:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "&password="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/LoadMemberPageTask;->password:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 66
    .local v14, "sendData":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    const-string v20, "UTF-8"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/OutputStream;->write([B)V

    .line 67
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 69
    .local v10, "rd":Ljava/io/BufferedReader;
    :cond_0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 80
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 126
    .end local v4    # "con":Ljava/net/HttpURLConnection;
    .end local v7    # "line":Ljava/lang/String;
    .end local v10    # "rd":Ljava/io/BufferedReader;
    .end local v14    # "sendData":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v7, 0x0

    :goto_1
    return-object v7

    .line 71
    .restart local v4    # "con":Ljava/net/HttpURLConnection;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v10    # "rd":Ljava/io/BufferedReader;
    .restart local v14    # "sendData":Ljava/lang/String;
    :cond_2
    const-string v19, "eggkey="

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 72
    .local v6, "from":I
    if-ltz v6, :cond_0

    .line 73
    add-int/lit8 v19, v6, 0x7

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 74
    const-string v19, "\""

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 75
    .local v15, "to":I
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 76
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "http://my.pandanet.co.jp/cgi-bin/cgi.exe?MHpg="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/LoadMemberPageTask;->page:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "&eggkey="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 77
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 124
    .end local v4    # "con":Ljava/net/HttpURLConnection;
    .end local v6    # "from":I
    .end local v7    # "line":Ljava/lang/String;
    .end local v10    # "rd":Ljava/io/BufferedReader;
    .end local v14    # "sendData":Ljava/lang/String;
    .end local v15    # "to":I
    :catch_0
    move-exception v19

    goto :goto_0

    .line 82
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/LoadMemberPageTask;->player:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 84
    const-string v19, "UserID=%s&Password=%s&MembNo=TetsukiSerialMembNo&page=profile&param=%s"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/LoadMemberPageTask;->logon:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "UTF-8"

    invoke-static/range {v22 .. v23}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/LoadMemberPageTask;->password:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "UTF-8"

    invoke-static/range {v22 .. v23}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    .line 87
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "id="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/LoadMemberPageTask;->player:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "UTF-8"

    invoke-static/range {v22 .. v23}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 84
    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 89
    .local v17, "urlParameters":Ljava/lang/String;
    sget-object v19, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .line 90
    .local v8, "postData":[B
    array-length v9, v8

    .line 91
    .local v9, "postDataLength":I
    const-string v11, "http://my.pandanet.co.jp/cgi-bin/cgi.exe?MH"

    .line 92
    .local v11, "request":Ljava/lang/String;
    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 93
    .local v16, "url":Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 94
    .local v5, "connection":Ljava/net/HttpURLConnection;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 95
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 96
    const-string v19, "POST"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 97
    const-string v19, "Content-Type"

    const-string v20, "application/x-www-form-urlencoded"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v19, "charset"

    const-string v20, "utf-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v19, "Content-Length"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 102
    new-instance v18, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 103
    .local v18, "wr":Ljava/io/DataOutputStream;
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 105
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 106
    .local v2, "HttpResult":I
    const/16 v19, 0xc8

    move/from16 v0, v19

    if-ne v2, v0, :cond_1

    .line 107
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    .line 108
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    const-string v21, "utf-8"

    invoke-direct/range {v19 .. v21}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 107
    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 109
    .local v3, "br":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 110
    .restart local v7    # "line":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v13, "sb":Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    .line 114
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 116
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 117
    .local v12, "result":Ljava/lang/String;
    const-string v19, "URL="

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 118
    .restart local v6    # "from":I
    add-int/lit8 v19, v6, 0x4

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 119
    const-string v19, "\">"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 120
    .restart local v15    # "to":I
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    .line 121
    goto/16 :goto_1

    .line 112
    .end local v6    # "from":I
    .end local v12    # "result":Ljava/lang/String;
    .end local v15    # "to":I
    :cond_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lbe/gentgo/tetsuki/LoadMemberPageTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lbe/gentgo/tetsuki/LoadMemberPageTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 53
    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Lbe/gentgo/tetsuki/LoadMemberPageTask;->webFragment:Lbe/gentgo/tetsuki/WebFragment;

    invoke-virtual {v0, p1}, Lbe/gentgo/tetsuki/WebFragment;->loadUrl(Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lbe/gentgo/tetsuki/LoadMemberPageTask;->context:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lbe/gentgo/tetsuki/LoadMemberPageTask;->context:Landroid/content/Context;

    const v3, 0x7f0800d4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lbe/gentgo/tetsuki/LoadMemberPageTask;->dialog:Landroid/app/ProgressDialog;

    .line 49
    return-void
.end method
