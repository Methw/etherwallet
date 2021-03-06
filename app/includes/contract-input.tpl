<div>
    <div ng-if="input.type.slice(-2) === '[]'">
        <array-input-drtv name="{{input.name}}" type="{{input.type}}"></array-input-drtv>
    </div>
    <div ng-if="input.type.slice(-2) !== '[]'" ng-switch on="input.type">
        <div class="item write-address" ng-switch-when="address">
            <label> {{input.name}}
                <small> {{input.type}}</small>
            </label>
            <div class="row">
                <div class="col-xs-11"><input class="form-control" type="text" placeholder="0x314156..."
                                              ng-model="input.value"
                                              ng-class="Validator.isValidAddress(input.value) ? 'is-valid' : 'is-invalid'"/>
                </div>
                <div class="col-xs-1">
                    <div class="addressIdenticon med" title="Address Indenticon"
                         blockie-address="{{input.value}}" watch-var="input.value"></div>
                </div>
            </div>
        </div>
        <p class="item write-unit256" ng-switch-when="uint256">
            <label> {{input.name}}
                <small> {{input.type}}</small>
            </label>
            <input class="form-control" type="text" placeholder="151" ng-model="input.value"
                   ng-class="Validator.isPositiveNumber(input.value) ? 'is-valid' : 'is-invalid'"/>
        </p>
        <p class="item write-string" ng-switch-when="string">
            <label> {{input.name}}
                <small> {{input.type}}</small>
            </label>
            <input class="form-control" type="text" placeholder="Ohh! Shiny!" ng-model="input.value"
                   ng-class="input.value!='' ? 'is-valid' : 'is-invalid'"/>
        </p>
        <p class="item write-bytes" ng-switch-when="bytes">
            <label> {{input.name}}
                <small> {{input.type}}</small>
            </label>
            <input class="form-control" type="text" placeholder="0x151bc..." ng-model="input.value"
                   ng-class="Validator.isValidHex(input.value) ? 'is-valid' : 'is-invalid'"/>
        </p>
        <p class="item write-boolean" ng-switch-when="bool">
            <label> {{input.name}}
                <small> {{input.type}}</small>
            </label>
            <span class="radio"><label><input ng-model="input.value" type="radio" name="optradio-{{input.name}}"
                                              ng-value="true">True</label></span>
            <span class="radio"><label><input ng-model="input.value" type="radio" name="optradio-{{input.name}}"
                                              ng-value="false">False</label></span>
        </p>
        <p class="item" ng-switch-default>
            <label> {{input.name}}
                <small> {{input.type}}</small>
            </label>
            <input class="form-control" type="{{input.type}}" placeholder="" ng-model="input.value"
                   ng-class="input.value!='' ? 'is-valid' : 'is-invalid'"/>
        </p>
    </div>
</div>
