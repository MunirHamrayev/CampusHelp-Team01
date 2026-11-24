/* CampusHelp prototype – Student submit + tracking (T07, Role B). FR-01..FR-04, FR-08 */
/* ---- submit + validation (FR-01, FR-02, FR-03, FR-08) ---- */
function setErr(field,msgId,text){ $(msgId).textContent=text; if(field) field.classList.toggle("invalid",!!text); return !text; }
$("reqForm").addEventListener("submit", e=>{
  e.preventDefault();
  const sid=$("sid").value.trim(), cat=$("cat").value, desc=$("desc").value.trim();
  const prio=(document.querySelector('input[name="prio"]:checked')||{}).value;
  let ok=true;
  ok &= setErr($("sid"),"sid-msg", !sid ? "Student ID is required." : (!/^\d{6,12}$/.test(sid) ? "Student ID must be 6–12 digits." : ""));
  ok &= setErr($("cat"),"cat-msg", cat ? "" : "Please select a request category.");
  ok &= setErr($("desc"),"desc-msg", !desc ? "Description is required." : (desc.length<10 ? "Please give at least 10 characters." : ""));
  ok &= setErr(null,"prio-msg", prio ? "" : "Please choose a priority.");
  $("prio").style.outline = prio ? "" : "1px solid var(--err)";
  if(!ok){ toast("Please fix the highlighted fields"); return; }
  const id = "CH-2026-" + String(seq++).padStart(4,"0");
  requests.unshift({id,sid,name:$("sname").value.trim()||"—",cat,loc:$("loc").value.trim()||"—",desc,prio,date:today(),assign:"— Unassigned —",status:"Open",updated:today()});
  $("newId").textContent=id;
  $("confirmDetail").textContent = `${cat} · ${prio} priority · Status: Open`;
  $("formView").hidden=true; $("confirmView").hidden=false;
});
$("another").onclick=()=>{ $("reqForm").reset(); $("prio").style.outline=""; $("formView").hidden=false; $("confirmView").hidden=true; };
$("trackNew").onclick=()=>{ $("tid").value=$("newId").textContent; showTab("track"); doTrack(); };

/* ---- tracking (FR-04) — input normalised to upper case so IDs work in any letter case ---- */
function doTrack(){
  const q=$("tid").value.trim().toUpperCase();
  const r=requests.find(x=>x.id===q);
  const out=$("trackResult");
  if(!q){ $("track-msg").textContent="Please enter a request ID."; out.hidden=true; return; }
  if(!r){ $("track-msg").textContent=`No request found with ID "${q}".`; out.hidden=true; return; }
  $("track-msg").textContent="";
  out.innerHTML = `<dt>Request ID</dt><dd>${r.id}</dd><dt>Category</dt><dd>${r.cat}</dd>
    <dt>Priority</dt><dd>${r.prio}</dd><dt>Description</dt><dd style="font-weight:400">${esc(r.desc)}</dd>
    <dt>Assigned to</dt><dd>${r.assign}</dd><dt>Status</dt><dd><span class="pill ${r.status.replace(' ','')}">${r.status}</span></dd>
    <dt>Last updated</dt><dd>${r.updated}</dd>`;
  out.hidden=false;
}
$("trackForm").addEventListener("submit",e=>{e.preventDefault();doTrack();});
