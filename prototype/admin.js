/* CampusHelp prototype – Admin dashboard (T08, Role A). FR-05, FR-06, FR-07 */
/* ---- admin dashboard (FR-05, FR-06, FR-07) ---- */
function render(){
  const fs=$("fStatus").value, fc=$("fCat").value, fp=$("fPrio").value;
  $("sTotal").textContent=requests.length;
  $("sOpen").textContent=requests.filter(r=>r.status==="Open").length;
  $("sProg").textContent=requests.filter(r=>r.status==="In Progress").length;
  $("sDone").textContent=requests.filter(r=>r.status==="Completed").length;
  const list=requests.filter(r=>(!fs||r.status===fs)&&(!fc||r.cat===fc)&&(!fp||r.prio===fp));
  $("rows").innerHTML = list.map(r=>`<tr>
    <td><b>${r.id}</b></td><td>${r.sid}<br><small style="color:var(--muted)">${esc(r.name)}</small></td>
    <td>${r.cat}</td><td class="p${r.prio[0]}">${r.prio}</td><td>${r.date}</td>
    <td><select data-id="${r.id}" data-f="assign">${STAFF.map(s=>`<option ${s===r.assign?"selected":""}>${s}</option>`).join("")}</select></td>
    <td><select data-id="${r.id}" data-f="status">${["Open","In Progress","Completed"].map(s=>`<option ${s===r.status?"selected":""}>${s}</option>`).join("")}</select></td>
  </tr>`).join("") || `<tr><td colspan="7" style="text-align:center;color:var(--muted)">No requests match these filters.</td></tr>`;
}
$("rows").addEventListener("change",e=>{
  const s=e.target; if(!s.dataset.id) return;
  const r=requests.find(x=>x.id===s.dataset.id);
  r[s.dataset.f]=s.value; r.updated=today();
  if(s.dataset.f==="assign" && r.status==="Open" && s.value!=="— Unassigned —"){ r.status="In Progress"; }
  render(); toast(`${r.id} updated`);
});
["fStatus","fCat","fPrio"].forEach(id=>$(id).onchange=render);
render();
