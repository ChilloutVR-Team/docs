# CVR Blitter Controller <div class="whitelisted" data-list="AWP"></div>

The `CVRBlitterController` component is used to define a specific execution order for a set of [CVRBlitter](cvr-blitter.md) components. When referenced by this controller, the listed blitters stop updating independently and are instead updated in the order defined in the list.

---

## Fields

| Name           | Type                  | Description                                                   |
|----------------|-----------------------|---------------------------------------------------------------|
| `cvrBlitters`  | `List<CVRBlitter>`    | The ordered list of `CVRBlitter` components to update manually. |