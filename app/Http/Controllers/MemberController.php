<?php

namespace App\Http\Controllers;

use App\Models\Member;
use App\Models\MemberSkill;
use Illuminate\Http\Request;

class MemberController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Member[]|\Illuminate\Database\Eloquent\Collection
     */
    public function index()
    {
        $members = Member::with('skills')->get();
        return $members;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response|int
     */
    public function store(Request $request)
    {
        $member = new Member;
        $member->name = $request->name;
        $member->status = $request->status;
        $member->date = $request->date;
        $member->project = $request->current;
        $member->start = $request->start;
//        $member->user_id = $request->user_id;
        $member->save();

        $request->skills = $request->skills ? $request->skills : [];

        foreach ($request->skills as $skill) {
            $s = new MemberSkill;
            $s->name = $request->name;
            $s->skill = $skill;
//            $s->member_id = $member->id;
            $s->save();
        }

        return 200;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Member  $member
     * @return \Illuminate\Http\Response
     */
    public function show(Member $member, Request  $request)
    {
        $member = Member::where('id',$request->id)->with('skills')->get();
        return $member;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Member  $member
     * @return \Illuminate\Http\Response
     */
    public function edit(Member $member)
    {

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Member  $member
     * @return \Illuminate\Http\Response|int
     */
    public function update(Request $request, Member $member)
    {
//        dd($request);
        $member = Member::where('id', $request->id)->first();
        $member->name = $request->name;
        $member->status = $request->status;
        $member->date = $request->date;
        $member->project = $request->current;
        $member->start = $request->start;
        $member->save();

        $s = MemberSkill::where('name', $request->name);
        $s->delete();

        foreach ($request->skills as $skill) {
            $s = new MemberSkill;
            $s->name = $request->name;
            $s->skill = $skill;
            $s->save();
        }


        return 200;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Member  $member
     * @return \Illuminate\Http\Response|int
     */
    public function destroy(Member $member, Request $request)
    {
        $member = Member::where('id', $request->id)->first();
        $member->delete();

        return 200;
    }
}
