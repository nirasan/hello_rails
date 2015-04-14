# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

entries = Entry.create([
                          {title: "はじめてのエントリー", body: "はじめまして！"},
                          {title: "2番目のエントリー", body: "おひさしぶりです！"},
                          {title: "3番目のエントリー", body: "もうくじけました・・・"},
                      ])
comments = Comment.create([
                              {body: "てすてす", status:"approved", entry:entries[0]},
                              {body: "どうもどうも", status:"unapproved", entry:entries[0]},
                              {body: "こんにちはこんにちは！", status:"approved", entry:entries[2]},
                          ])
