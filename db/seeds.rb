# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

blogs = Blog.create([
                        {title:"ねこがすき！にゃんにゃんブログ"},
                        {title:"いぬがすき！わんわんブログ"},
                        {title:"つまがすき！いとうさんブログ"},
                    ])

entries = Entry.create([
                          {title: "はじめてのエントリー", body: "はじめまして！", blog:blogs[0]},
                          {title: "2番目のエントリー", body: "おひさしぶりです！", blog:blogs[0]},
                          {title: "3番目のエントリー", body: "もうくじけました・・・", blog:blogs[2]},
                      ])
comments = Comment.create([
                              {body: "てすてす", status:"approved", entry:entries[0]},
                              {body: "ねこはかわいいですよね", status:"unapproved", entry:entries[0]},
                              {body: "例のいぬについて", status:"approved", entry:entries[1]},
                              {body: "こんにちはこんにちは！", status:"approved", entry:entries[2]},
                          ])
