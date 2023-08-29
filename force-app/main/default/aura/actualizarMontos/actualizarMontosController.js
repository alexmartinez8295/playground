({
	doInit: function (component, event, helper) {
        var action = component.get("c.getAngeles");
        
        action.setCallback(this, function(response){
            var data = response.getReturnValue();
            component.set("v.data", data);
        });
        $A.enqueueAction(action);
    }
})