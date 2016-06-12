<%--
  Created by IntelliJ IDEA.
  User: noowaay
  Date: 02/06/2016
  Time: 1:08 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="s" uri="/struts-tags" %>

<t:admingenericpage>
    <jsp:attribute name="page_title">
      Categories
    </jsp:attribute>

    <jsp:body>
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i>Orders</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="index">Home</a></li>
                    <li><i class="fa fa-laptop"></i>Orders</li>
                </ol>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        Add Order
                    </header>
                    <div class="panel-body">
                        <form class="form-horizontal " method="get">
                            <ul id="order" class="nav nav-tabs nav-justified">
                                <li class="disabled active"><a href="#tab-customer" data-toggle="tab">1. Customer Details</a></li>
                                <li class="disabled"><a href="#tab-cart" data-toggle="tab">2. Products</a></li>
                                <li class="disabled"><a href="#tab-payment" data-toggle="tab">3. Payment Details</a></li>
                                <li class="disabled"><a href="#tab-shipping" data-toggle="tab">4. Shipping Details</a></li>
                                <li class="disabled"><a href="#tab-total" data-toggle="tab">5. Totals</a></li>
                            </ul>

                            <div class="tab-content" style="margin-top: 20px">
                                <div class="tab-pane active" id="tab-customer">
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-firstname">Name</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="firstname" value="" id="input-firstname" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-email">E-Mail</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="email" value="" id="input-email" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-telephone">Telephone</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="telephone" value="" id="input-telephone" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-fax">Fax</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="fax" value="" id="input-fax" class="form-control">
                                        </div>
                                    </div>
                                    <div class="text-right">
                                        <button type="button" id="button-customer" data-loading-text="Loading..." class="btn btn-primary"><i class="fa fa-arrow-right"></i> Continue</button>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab-cart">
                                    <div class="table-responsive">
                                        <table class="table table-bordered">
                                            <thead>
                                            <tr>
                                                <td class="text-left">Product</td>
                                                <td class="text-left">Model</td>
                                                <td class="text-right">Quantity</td>
                                                <td class="text-right">Unit Price</td>
                                                <td class="text-right">Total</td>
                                                <td></td>
                                            </tr>
                                            </thead>
                                            <tbody id="cart">
                                            <tr>
                                                <td class="text-center" colspan="6">No results!</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <ul class="nav nav-tabs nav-justified">
                                        <li class="active"><a href="#tab-product" data-toggle="tab">Products</a></li>
                                        <li><a href="#tab-voucher" data-toggle="tab">Vouchers</a></li>
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="tab-product">
                                            <fieldset>
                                                <legend>Add Product(s)</legend>
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" for="input-product">Choose Product</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="product" value="" id="input-product" class="form-control" autocomplete="off"><ul class="dropdown-menu"></ul>
                                                        <input type="hidden" name="product_id" value="">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" for="input-quantity">Quantity</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="quantity" value="1" id="input-quantity" class="form-control">
                                                    </div>
                                                </div>
                                                <div id="option"></div>
                                            </fieldset>
                                            <div class="text-right">
                                                <button type="button" id="button-product-add" data-loading-text="Loading..." class="btn btn-primary"><i class="fa fa-plus-circle"></i> Add Product</button>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="tab-voucher">
                                            <fieldset>
                                                <legend>Add Voucher(s)</legend>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="input-to-name">Recipient's Name</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="to_name" value="" id="input-to-name" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="input-to-email">Recipient's Email</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="to_email" value="" id="input-to-email" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="input-from-name">Senders Name</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="from_name" value="" id="input-from-name" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="input-from-email">Senders Email</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="from_email" value="" id="input-from-email" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="input-theme">Gift Certificate Theme</label>
                                                    <div class="col-sm-10">
                                                        <select name="voucher_theme_id" id="input-theme" class="form-control">
                                                            <option value="7">Birthday</option>
                                                            <option value="6">Christmas</option>
                                                            <option value="8">General</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" for="input-message">Message</label>
                                                    <div class="col-sm-10">
                                                        <textarea name="message" rows="5" id="input-message" class="form-control"></textarea>
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="input-amount">Amount</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="amount" value="1" id="input-amount" class="form-control">
                                                    </div>
                                                </div>
                                            </fieldset>
                                            <div class="text-right">
                                                <button type="button" id="button-voucher-add" data-loading-text="Loading..." class="btn btn-primary"><i class="fa fa-plus-circle"></i> Add Voucher</button>
                                            </div>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="row">
                                        <div class="col-sm-6 text-left">
                                            <button type="button" onclick="$('a[href=\'#tab-customer\']').tab('show');" class="btn btn-default"><i class="fa fa-arrow-left"></i> Back</button>
                                        </div>
                                        <div class="col-sm-6 text-right">
                                            <button type="button" id="button-cart" class="btn btn-primary"><i class="fa fa-arrow-right"></i> Continue</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab-payment">
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-payment-address">Choose Address</label>
                                        <div class="col-sm-10">
                                            <select name="payment_address" id="input-payment-address" class="form-control"><option value="0"> --- None --- </option></select>
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-payment-firstname">First Name</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="firstname" value="" id="input-payment-firstname" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-payment-lastname">Last Name</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="lastname" value="" id="input-payment-lastname" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-payment-company">Company</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="company" value="" id="input-payment-company" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-payment-address-1">Address 1</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="address_1" value="" id="input-payment-address-1" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-payment-address-2">Address 2</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="address_2" value="" id="input-payment-address-2" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-payment-city">City</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="city" value="" id="input-payment-city" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-payment-postcode">Postcode</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="postcode" value="" id="input-payment-postcode" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-payment-country">Country</label>
                                        <div class="col-sm-10">
                                            <select name="country_id" id="input-payment-country" class="form-control">
                                                <option value=""> --- Please Select --- </option>
                                                <option value="244">Aaland Islands</option>
                                                <option value="1">Afghanistan</option>
                                                <option value="2">Albania</option>
                                                <option value="3">Algeria</option>
                                                <option value="4">American Samoa</option>
                                                <option value="5">Andorra</option>
                                                <option value="6">Angola</option>
                                                <option value="7">Anguilla</option>
                                                <option value="8">Antarctica</option>
                                                <option value="9">Antigua and Barbuda</option>
                                                <option value="10">Argentina</option>
                                                <option value="11">Armenia</option>
                                                <option value="12">Aruba</option>
                                                <option value="252">Ascension Island (British)</option>
                                                <option value="13">Australia</option>
                                                <option value="14">Austria</option>
                                                <option value="15">Azerbaijan</option>
                                                <option value="16">Bahamas</option>
                                                <option value="17">Bahrain</option>
                                                <option value="18">Bangladesh</option>
                                                <option value="19">Barbados</option>
                                                <option value="20">Belarus</option>
                                                <option value="21">Belgium</option>
                                                <option value="22">Belize</option>
                                                <option value="23">Benin</option>
                                                <option value="24">Bermuda</option>
                                                <option value="25">Bhutan</option>
                                                <option value="26">Bolivia</option>
                                                <option value="245">Bonaire, Sint Eustatius and Saba</option>
                                                <option value="27">Bosnia and Herzegovina</option>
                                                <option value="28">Botswana</option>
                                                <option value="29">Bouvet Island</option>
                                                <option value="30">Brazil</option>
                                                <option value="31">British Indian Ocean Territory</option>
                                                <option value="32">Brunei Darussalam</option>
                                                <option value="33">Bulgaria</option>
                                                <option value="34">Burkina Faso</option>
                                                <option value="35">Burundi</option>
                                                <option value="36">Cambodia</option>
                                                <option value="37">Cameroon</option>
                                                <option value="38">Canada</option>
                                                <option value="251">Canary Islands</option>
                                                <option value="39">Cape Verde</option>
                                                <option value="40">Cayman Islands</option>
                                                <option value="41">Central African Republic</option>
                                                <option value="42">Chad</option>
                                                <option value="43">Chile</option>
                                                <option value="44">China</option>
                                                <option value="45">Christmas Island</option>
                                                <option value="46">Cocos (Keeling) Islands</option>
                                                <option value="47">Colombia</option>
                                                <option value="48">Comoros</option>
                                                <option value="49">Congo</option>
                                                <option value="50">Cook Islands</option>
                                                <option value="51">Costa Rica</option>
                                                <option value="52">Cote D'Ivoire</option>
                                                <option value="53">Croatia</option>
                                                <option value="54">Cuba</option>
                                                <option value="246">Curacao</option>
                                                <option value="55">Cyprus</option>
                                                <option value="56">Czech Republic</option>
                                                <option value="237">Democratic Republic of Congo</option>
                                                <option value="57">Denmark</option>
                                                <option value="58">Djibouti</option>
                                                <option value="59">Dominica</option>
                                                <option value="60">Dominican Republic</option>
                                                <option value="61">East Timor</option>
                                                <option value="62">Ecuador</option>
                                                <option value="63">Egypt</option>
                                                <option value="64">El Salvador</option>
                                                <option value="65">Equatorial Guinea</option>
                                                <option value="66">Eritrea</option>
                                                <option value="67">Estonia</option>
                                                <option value="68">Ethiopia</option>
                                                <option value="69">Falkland Islands (Malvinas)</option>
                                                <option value="70">Faroe Islands</option>
                                                <option value="71">Fiji</option>
                                                <option value="72">Finland</option>
                                                <option value="74">France, Metropolitan</option>
                                                <option value="75">French Guiana</option>
                                                <option value="76">French Polynesia</option>
                                                <option value="77">French Southern Territories</option>
                                                <option value="126">FYROM</option>
                                                <option value="78">Gabon</option>
                                                <option value="79">Gambia</option>
                                                <option value="80">Georgia</option>
                                                <option value="81">Germany</option>
                                                <option value="82">Ghana</option>
                                                <option value="83">Gibraltar</option>
                                                <option value="84">Greece</option>
                                                <option value="85">Greenland</option>
                                                <option value="86">Grenada</option>
                                                <option value="87">Guadeloupe</option>
                                                <option value="88">Guam</option>
                                                <option value="89">Guatemala</option>
                                                <option value="256">Guernsey</option>
                                                <option value="90">Guinea</option>
                                                <option value="91">Guinea-Bissau</option>
                                                <option value="92">Guyana</option>
                                                <option value="93">Haiti</option>
                                                <option value="94">Heard and Mc Donald Islands</option>
                                                <option value="95">Honduras</option>
                                                <option value="96">Hong Kong</option>
                                                <option value="97">Hungary</option>
                                                <option value="98">Iceland</option>
                                                <option value="99">India</option>
                                                <option value="100">Indonesia</option>
                                                <option value="101">Iran (Islamic Republic of)</option>
                                                <option value="102">Iraq</option>
                                                <option value="103">Ireland</option>
                                                <option value="254">Isle of Man</option>
                                                <option value="104">Israel</option>
                                                <option value="105">Italy</option>
                                                <option value="106">Jamaica</option>
                                                <option value="107">Japan</option>
                                                <option value="257">Jersey</option>
                                                <option value="108">Jordan</option>
                                                <option value="109">Kazakhstan</option>
                                                <option value="110">Kenya</option>
                                                <option value="111">Kiribati</option>
                                                <option value="113">Korea, Republic of</option>
                                                <option value="253">Kosovo, Republic of</option>
                                                <option value="114">Kuwait</option>
                                                <option value="115">Kyrgyzstan</option>
                                                <option value="116">Lao People's Democratic Republic</option>
                                                <option value="117">Latvia</option>
                                                <option value="118">Lebanon</option>
                                                <option value="119">Lesotho</option>
                                                <option value="120">Liberia</option>
                                                <option value="121">Libyan Arab Jamahiriya</option>
                                                <option value="122">Liechtenstein</option>
                                                <option value="123">Lithuania</option>
                                                <option value="124">Luxembourg</option>
                                                <option value="125">Macau</option>
                                                <option value="127">Madagascar</option>
                                                <option value="128">Malawi</option>
                                                <option value="129">Malaysia</option>
                                                <option value="130">Maldives</option>
                                                <option value="131">Mali</option>
                                                <option value="132">Malta</option>
                                                <option value="133">Marshall Islands</option>
                                                <option value="134">Martinique</option>
                                                <option value="135">Mauritania</option>
                                                <option value="136">Mauritius</option>
                                                <option value="137">Mayotte</option>
                                                <option value="138">Mexico</option>
                                                <option value="139">Micronesia, Federated States of</option>
                                                <option value="140">Moldova, Republic of</option>
                                                <option value="141">Monaco</option>
                                                <option value="142">Mongolia</option>
                                                <option value="242">Montenegro</option>
                                                <option value="143">Montserrat</option>
                                                <option value="144">Morocco</option>
                                                <option value="145">Mozambique</option>
                                                <option value="146">Myanmar</option>
                                                <option value="147">Namibia</option>
                                                <option value="148">Nauru</option>
                                                <option value="149">Nepal</option>
                                                <option value="150">Netherlands</option>
                                                <option value="151">Netherlands Antilles</option>
                                                <option value="152">New Caledonia</option>
                                                <option value="153">New Zealand</option>
                                                <option value="154">Nicaragua</option>
                                                <option value="155">Niger</option>
                                                <option value="156">Nigeria</option>
                                                <option value="157">Niue</option>
                                                <option value="158">Norfolk Island</option>
                                                <option value="112">North Korea</option>
                                                <option value="159">Northern Mariana Islands</option>
                                                <option value="160">Norway</option>
                                                <option value="161">Oman</option>
                                                <option value="162">Pakistan</option>
                                                <option value="163">Palau</option>
                                                <option value="247">Palestinian Territory, Occupied</option>
                                                <option value="164">Panama</option>
                                                <option value="165">Papua New Guinea</option>
                                                <option value="166">Paraguay</option>
                                                <option value="167">Peru</option>
                                                <option value="168">Philippines</option>
                                                <option value="169">Pitcairn</option>
                                                <option value="170">Poland</option>
                                                <option value="171">Portugal</option>
                                                <option value="172">Puerto Rico</option>
                                                <option value="173">Qatar</option>
                                                <option value="174">Reunion</option>
                                                <option value="175">Romania</option>
                                                <option value="176">Russian Federation</option>
                                                <option value="177">Rwanda</option>
                                                <option value="178">Saint Kitts and Nevis</option>
                                                <option value="179">Saint Lucia</option>
                                                <option value="180">Saint Vincent and the Grenadines</option>
                                                <option value="181">Samoa</option>
                                                <option value="182">San Marino</option>
                                                <option value="183">Sao Tome and Principe</option>
                                                <option value="184">Saudi Arabia</option>
                                                <option value="185">Senegal</option>
                                                <option value="243">Serbia</option>
                                                <option value="186">Seychelles</option>
                                                <option value="187">Sierra Leone</option>
                                                <option value="188">Singapore</option>
                                                <option value="189">Slovak Republic</option>
                                                <option value="190">Slovenia</option>
                                                <option value="191">Solomon Islands</option>
                                                <option value="192">Somalia</option>
                                                <option value="193">South Africa</option>
                                                <option value="194">South Georgia &amp; South Sandwich Islands</option>
                                                <option value="248">South Sudan</option>
                                                <option value="195">Spain</option>
                                                <option value="196">Sri Lanka</option>
                                                <option value="249">St. Barthelemy</option>
                                                <option value="197">St. Helena</option>
                                                <option value="250">St. Martin (French part)</option>
                                                <option value="198">St. Pierre and Miquelon</option>
                                                <option value="199">Sudan</option>
                                                <option value="200">Suriname</option>
                                                <option value="201">Svalbard and Jan Mayen Islands</option>
                                                <option value="202">Swaziland</option>
                                                <option value="203">Sweden</option>
                                                <option value="204">Switzerland</option>
                                                <option value="205">Syrian Arab Republic</option>
                                                <option value="206">Taiwan</option>
                                                <option value="207">Tajikistan</option>
                                                <option value="208">Tanzania, United Republic of</option>
                                                <option value="209">Thailand</option>
                                                <option value="210">Togo</option>
                                                <option value="211">Tokelau</option>
                                                <option value="212">Tonga</option>
                                                <option value="213">Trinidad and Tobago</option>
                                                <option value="255">Tristan da Cunha</option>
                                                <option value="214">Tunisia</option>
                                                <option value="215">Turkey</option>
                                                <option value="216">Turkmenistan</option>
                                                <option value="217">Turks and Caicos Islands</option>
                                                <option value="218">Tuvalu</option>
                                                <option value="219">Uganda</option>
                                                <option value="220">Ukraine</option>
                                                <option value="221">United Arab Emirates</option>
                                                <option value="222">United Kingdom</option>
                                                <option value="223">United States</option>
                                                <option value="224">United States Minor Outlying Islands</option>
                                                <option value="225">Uruguay</option>
                                                <option value="226">Uzbekistan</option>
                                                <option value="227">Vanuatu</option>
                                                <option value="228">Vatican City State (Holy See)</option>
                                                <option value="229">Venezuela</option>
                                                <option value="230">Viet Nam</option>
                                                <option value="231">Virgin Islands (British)</option>
                                                <option value="232">Virgin Islands (U.S.)</option>
                                                <option value="233">Wallis and Futuna Islands</option>
                                                <option value="234">Western Sahara</option>
                                                <option value="235">Yemen</option>
                                                <option value="238">Zambia</option>
                                                <option value="239">Zimbabwe</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-payment-zone">Region / State</label>
                                        <div class="col-sm-10">
                                            <select name="zone_id" id="input-payment-zone" class="form-control"><option value=""> --- Please Select --- </option><option value="0" selected="selected"> --- None --- </option></select>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6 text-left">
                                            <button type="button" onclick="$('a[href=\'#tab-cart\']').tab('show');" class="btn btn-default"><i class="fa fa-arrow-left"></i> Back</button>
                                        </div>
                                        <div class="col-sm-6 text-right">
                                            <button type="button" id="button-payment-address" data-loading-text="Loading..." class="btn btn-primary"><i class="fa fa-arrow-right"></i> Continue</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab-shipping">
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-shipping-address">Choose Address</label>
                                        <div class="col-sm-10">
                                            <select name="shipping_address" id="input-shipping-address" class="form-control"><option value="0"> --- None --- </option></select>
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-shipping-firstname">First Name</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="firstname" value="" id="input-shipping-firstname" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-shipping-lastname">Last Name</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="lastname" value="" id="input-shipping-lastname" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-shipping-company">Company</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="company" value="" id="input-shipping-company" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-shipping-address-1">Address 1</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="address_1" value="" id="input-shipping-address-1" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-shipping-address-2">Address 2</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="address_2" value="" id="input-shipping-address-2" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-shipping-city">City</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="city" value="" id="input-shipping-city" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-shipping-postcode">Postcode</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="postcode" value="" id="input-shipping-postcode" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-shipping-country">Country</label>
                                        <div class="col-sm-10">
                                            <select name="country_id" id="input-shipping-country" class="form-control">
                                                <option value=""> --- Please Select --- </option>
                                                <option value="244">Aaland Islands</option>
                                                <option value="1">Afghanistan</option>
                                                <option value="2">Albania</option>
                                                <option value="3">Algeria</option>
                                                <option value="4">American Samoa</option>
                                                <option value="5">Andorra</option>
                                                <option value="6">Angola</option>
                                                <option value="7">Anguilla</option>
                                                <option value="8">Antarctica</option>
                                                <option value="9">Antigua and Barbuda</option>
                                                <option value="10">Argentina</option>
                                                <option value="11">Armenia</option>
                                                <option value="12">Aruba</option>
                                                <option value="252">Ascension Island (British)</option>
                                                <option value="13">Australia</option>
                                                <option value="14">Austria</option>
                                                <option value="15">Azerbaijan</option>
                                                <option value="16">Bahamas</option>
                                                <option value="17">Bahrain</option>
                                                <option value="18">Bangladesh</option>
                                                <option value="19">Barbados</option>
                                                <option value="20">Belarus</option>
                                                <option value="21">Belgium</option>
                                                <option value="22">Belize</option>
                                                <option value="23">Benin</option>
                                                <option value="24">Bermuda</option>
                                                <option value="25">Bhutan</option>
                                                <option value="26">Bolivia</option>
                                                <option value="245">Bonaire, Sint Eustatius and Saba</option>
                                                <option value="27">Bosnia and Herzegovina</option>
                                                <option value="28">Botswana</option>
                                                <option value="29">Bouvet Island</option>
                                                <option value="30">Brazil</option>
                                                <option value="31">British Indian Ocean Territory</option>
                                                <option value="32">Brunei Darussalam</option>
                                                <option value="33">Bulgaria</option>
                                                <option value="34">Burkina Faso</option>
                                                <option value="35">Burundi</option>
                                                <option value="36">Cambodia</option>
                                                <option value="37">Cameroon</option>
                                                <option value="38">Canada</option>
                                                <option value="251">Canary Islands</option>
                                                <option value="39">Cape Verde</option>
                                                <option value="40">Cayman Islands</option>
                                                <option value="41">Central African Republic</option>
                                                <option value="42">Chad</option>
                                                <option value="43">Chile</option>
                                                <option value="44">China</option>
                                                <option value="45">Christmas Island</option>
                                                <option value="46">Cocos (Keeling) Islands</option>
                                                <option value="47">Colombia</option>
                                                <option value="48">Comoros</option>
                                                <option value="49">Congo</option>
                                                <option value="50">Cook Islands</option>
                                                <option value="51">Costa Rica</option>
                                                <option value="52">Cote D'Ivoire</option>
                                                <option value="53">Croatia</option>
                                                <option value="54">Cuba</option>
                                                <option value="246">Curacao</option>
                                                <option value="55">Cyprus</option>
                                                <option value="56">Czech Republic</option>
                                                <option value="237">Democratic Republic of Congo</option>
                                                <option value="57">Denmark</option>
                                                <option value="58">Djibouti</option>
                                                <option value="59">Dominica</option>
                                                <option value="60">Dominican Republic</option>
                                                <option value="61">East Timor</option>
                                                <option value="62">Ecuador</option>
                                                <option value="63">Egypt</option>
                                                <option value="64">El Salvador</option>
                                                <option value="65">Equatorial Guinea</option>
                                                <option value="66">Eritrea</option>
                                                <option value="67">Estonia</option>
                                                <option value="68">Ethiopia</option>
                                                <option value="69">Falkland Islands (Malvinas)</option>
                                                <option value="70">Faroe Islands</option>
                                                <option value="71">Fiji</option>
                                                <option value="72">Finland</option>
                                                <option value="74">France, Metropolitan</option>
                                                <option value="75">French Guiana</option>
                                                <option value="76">French Polynesia</option>
                                                <option value="77">French Southern Territories</option>
                                                <option value="126">FYROM</option>
                                                <option value="78">Gabon</option>
                                                <option value="79">Gambia</option>
                                                <option value="80">Georgia</option>
                                                <option value="81">Germany</option>
                                                <option value="82">Ghana</option>
                                                <option value="83">Gibraltar</option>
                                                <option value="84">Greece</option>
                                                <option value="85">Greenland</option>
                                                <option value="86">Grenada</option>
                                                <option value="87">Guadeloupe</option>
                                                <option value="88">Guam</option>
                                                <option value="89">Guatemala</option>
                                                <option value="256">Guernsey</option>
                                                <option value="90">Guinea</option>
                                                <option value="91">Guinea-Bissau</option>
                                                <option value="92">Guyana</option>
                                                <option value="93">Haiti</option>
                                                <option value="94">Heard and Mc Donald Islands</option>
                                                <option value="95">Honduras</option>
                                                <option value="96">Hong Kong</option>
                                                <option value="97">Hungary</option>
                                                <option value="98">Iceland</option>
                                                <option value="99">India</option>
                                                <option value="100">Indonesia</option>
                                                <option value="101">Iran (Islamic Republic of)</option>
                                                <option value="102">Iraq</option>
                                                <option value="103">Ireland</option>
                                                <option value="254">Isle of Man</option>
                                                <option value="104">Israel</option>
                                                <option value="105">Italy</option>
                                                <option value="106">Jamaica</option>
                                                <option value="107">Japan</option>
                                                <option value="257">Jersey</option>
                                                <option value="108">Jordan</option>
                                                <option value="109">Kazakhstan</option>
                                                <option value="110">Kenya</option>
                                                <option value="111">Kiribati</option>
                                                <option value="113">Korea, Republic of</option>
                                                <option value="253">Kosovo, Republic of</option>
                                                <option value="114">Kuwait</option>
                                                <option value="115">Kyrgyzstan</option>
                                                <option value="116">Lao People's Democratic Republic</option>
                                                <option value="117">Latvia</option>
                                                <option value="118">Lebanon</option>
                                                <option value="119">Lesotho</option>
                                                <option value="120">Liberia</option>
                                                <option value="121">Libyan Arab Jamahiriya</option>
                                                <option value="122">Liechtenstein</option>
                                                <option value="123">Lithuania</option>
                                                <option value="124">Luxembourg</option>
                                                <option value="125">Macau</option>
                                                <option value="127">Madagascar</option>
                                                <option value="128">Malawi</option>
                                                <option value="129">Malaysia</option>
                                                <option value="130">Maldives</option>
                                                <option value="131">Mali</option>
                                                <option value="132">Malta</option>
                                                <option value="133">Marshall Islands</option>
                                                <option value="134">Martinique</option>
                                                <option value="135">Mauritania</option>
                                                <option value="136">Mauritius</option>
                                                <option value="137">Mayotte</option>
                                                <option value="138">Mexico</option>
                                                <option value="139">Micronesia, Federated States of</option>
                                                <option value="140">Moldova, Republic of</option>
                                                <option value="141">Monaco</option>
                                                <option value="142">Mongolia</option>
                                                <option value="242">Montenegro</option>
                                                <option value="143">Montserrat</option>
                                                <option value="144">Morocco</option>
                                                <option value="145">Mozambique</option>
                                                <option value="146">Myanmar</option>
                                                <option value="147">Namibia</option>
                                                <option value="148">Nauru</option>
                                                <option value="149">Nepal</option>
                                                <option value="150">Netherlands</option>
                                                <option value="151">Netherlands Antilles</option>
                                                <option value="152">New Caledonia</option>
                                                <option value="153">New Zealand</option>
                                                <option value="154">Nicaragua</option>
                                                <option value="155">Niger</option>
                                                <option value="156">Nigeria</option>
                                                <option value="157">Niue</option>
                                                <option value="158">Norfolk Island</option>
                                                <option value="112">North Korea</option>
                                                <option value="159">Northern Mariana Islands</option>
                                                <option value="160">Norway</option>
                                                <option value="161">Oman</option>
                                                <option value="162">Pakistan</option>
                                                <option value="163">Palau</option>
                                                <option value="247">Palestinian Territory, Occupied</option>
                                                <option value="164">Panama</option>
                                                <option value="165">Papua New Guinea</option>
                                                <option value="166">Paraguay</option>
                                                <option value="167">Peru</option>
                                                <option value="168">Philippines</option>
                                                <option value="169">Pitcairn</option>
                                                <option value="170">Poland</option>
                                                <option value="171">Portugal</option>
                                                <option value="172">Puerto Rico</option>
                                                <option value="173">Qatar</option>
                                                <option value="174">Reunion</option>
                                                <option value="175">Romania</option>
                                                <option value="176">Russian Federation</option>
                                                <option value="177">Rwanda</option>
                                                <option value="178">Saint Kitts and Nevis</option>
                                                <option value="179">Saint Lucia</option>
                                                <option value="180">Saint Vincent and the Grenadines</option>
                                                <option value="181">Samoa</option>
                                                <option value="182">San Marino</option>
                                                <option value="183">Sao Tome and Principe</option>
                                                <option value="184">Saudi Arabia</option>
                                                <option value="185">Senegal</option>
                                                <option value="243">Serbia</option>
                                                <option value="186">Seychelles</option>
                                                <option value="187">Sierra Leone</option>
                                                <option value="188">Singapore</option>
                                                <option value="189">Slovak Republic</option>
                                                <option value="190">Slovenia</option>
                                                <option value="191">Solomon Islands</option>
                                                <option value="192">Somalia</option>
                                                <option value="193">South Africa</option>
                                                <option value="194">South Georgia &amp; South Sandwich Islands</option>
                                                <option value="248">South Sudan</option>
                                                <option value="195">Spain</option>
                                                <option value="196">Sri Lanka</option>
                                                <option value="249">St. Barthelemy</option>
                                                <option value="197">St. Helena</option>
                                                <option value="250">St. Martin (French part)</option>
                                                <option value="198">St. Pierre and Miquelon</option>
                                                <option value="199">Sudan</option>
                                                <option value="200">Suriname</option>
                                                <option value="201">Svalbard and Jan Mayen Islands</option>
                                                <option value="202">Swaziland</option>
                                                <option value="203">Sweden</option>
                                                <option value="204">Switzerland</option>
                                                <option value="205">Syrian Arab Republic</option>
                                                <option value="206">Taiwan</option>
                                                <option value="207">Tajikistan</option>
                                                <option value="208">Tanzania, United Republic of</option>
                                                <option value="209">Thailand</option>
                                                <option value="210">Togo</option>
                                                <option value="211">Tokelau</option>
                                                <option value="212">Tonga</option>
                                                <option value="213">Trinidad and Tobago</option>
                                                <option value="255">Tristan da Cunha</option>
                                                <option value="214">Tunisia</option>
                                                <option value="215">Turkey</option>
                                                <option value="216">Turkmenistan</option>
                                                <option value="217">Turks and Caicos Islands</option>
                                                <option value="218">Tuvalu</option>
                                                <option value="219">Uganda</option>
                                                <option value="220">Ukraine</option>
                                                <option value="221">United Arab Emirates</option>
                                                <option value="222">United Kingdom</option>
                                                <option value="223">United States</option>
                                                <option value="224">United States Minor Outlying Islands</option>
                                                <option value="225">Uruguay</option>
                                                <option value="226">Uzbekistan</option>
                                                <option value="227">Vanuatu</option>
                                                <option value="228">Vatican City State (Holy See)</option>
                                                <option value="229">Venezuela</option>
                                                <option value="230">Viet Nam</option>
                                                <option value="231">Virgin Islands (British)</option>
                                                <option value="232">Virgin Islands (U.S.)</option>
                                                <option value="233">Wallis and Futuna Islands</option>
                                                <option value="234">Western Sahara</option>
                                                <option value="235">Yemen</option>
                                                <option value="238">Zambia</option>
                                                <option value="239">Zimbabwe</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-shipping-zone">Region / State</label>
                                        <div class="col-sm-10">
                                            <select name="zone_id" id="input-shipping-zone" class="form-control"><option value=""> --- Please Select --- </option><option value="0" selected="selected"> --- None --- </option></select>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6 text-left">
                                            <button type="button" onclick="$('a[href=\'#tab-payment\']').tab('show');" class="btn btn-default"><i class="fa fa-arrow-left"></i> Back</button>
                                        </div>
                                        <div class="col-sm-6 text-right">
                                            <button type="button" id="button-shipping-address" data-loading-text="Loading..." class="btn btn-primary"><i class="fa fa-arrow-right"></i> Continue</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab-total">
                                    <div class="table-responsive">
                                        <table class="table table-bordered">
                                            <thead>
                                            <tr>
                                                <td class="text-left">Product</td>
                                                <td class="text-left">Model</td>
                                                <td class="text-right">Quantity</td>
                                                <td class="text-right">Unit Price</td>
                                                <td class="text-right">Total</td>
                                            </tr>
                                            </thead>
                                            <tbody id="total">
                                            <tr>
                                                <td class="text-center" colspan="5">No results!</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <fieldset>
                                        <legend>Order Details</legend>
                                        <div class="form-group required">
                                            <label class="col-sm-2 control-label" for="input-shipping-method">Shipping Method</label>
                                            <div class="col-sm-10">
                                                <div class="input-group">
                                                    <select name="shipping_method" id="input-shipping-method" class="form-control">
                                                        <option value=""> --- Please Select --- </option>
                                                    </select>
                      <span class="input-group-btn">
                      <button type="button" id="button-shipping-method" data-toggle="tooltip" title="" data-loading-text="Loading..." class="btn btn-primary" data-original-title="Apply Shipping Method"><i class="fa fa-refresh"></i></button>
                      </span></div>
                                            </div>
                                        </div>
                                        <div class="form-group required">
                                            <label class="col-sm-2 control-label" for="input-payment-method">Payment Method</label>
                                            <div class="col-sm-10">
                                                <div class="input-group">
                                                    <select name="payment_method" id="input-payment-method" class="form-control">
                                                        <option value=""> --- Please Select --- </option>
                                                    </select>
                      <span class="input-group-btn">
                      <button type="button" id="button-payment-method" data-toggle="tooltip" title="" data-loading-text="Loading..." class="btn btn-primary" data-original-title="Apply Payment Method"><i class="fa fa-refresh"></i></button>
                      </span></div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label" for="input-coupon">Coupon</label>
                                            <div class="col-sm-10">
                                                <div class="input-group">
                                                    <input type="text" name="coupon" value="" id="input-coupon" class="form-control">
                      <span class="input-group-btn">
                      <button type="button" id="button-coupon" data-toggle="tooltip" title="" data-loading-text="Loading..." class="btn btn-primary" data-original-title="Apply Coupon"><i class="fa fa-refresh"></i></button>
                      </span></div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label" for="input-voucher">Voucher</label>
                                            <div class="col-sm-10">
                                                <div class="input-group">
                                                    <input type="text" name="voucher" value="" id="input-voucher" data-loading-text="Loading..." class="form-control">
                      <span class="input-group-btn">
                      <button type="button" id="button-voucher" data-toggle="tooltip" title="" data-loading-text="Loading..." class="btn btn-primary" data-original-title="Apply Voucher"><i class="fa fa-refresh"></i></button>
                      </span></div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label" for="input-reward">Reward</label>
                                            <div class="col-sm-10">
                                                <div class="input-group">
                                                    <input type="text" name="reward" value="" id="input-reward" data-loading-text="Loading..." class="form-control">
                      <span class="input-group-btn">
                      <button type="button" id="button-reward" data-toggle="tooltip" title="" data-loading-text="Loading..." class="btn btn-primary" data-original-title="Apply Points"><i class="fa fa-refresh"></i></button>
                      </span></div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label" for="input-order-status">Order Status</label>
                                            <div class="col-sm-10">
                                                <select name="order_status_id" id="input-order-status" class="form-control">
                                                    <option value="7">Canceled</option>
                                                    <option value="9">Canceled Reversal</option>
                                                    <option value="13">Chargeback</option>
                                                    <option value="5">Complete</option>
                                                    <option value="8">Denied</option>
                                                    <option value="14">Expired</option>
                                                    <option value="10">Failed</option>
                                                    <option value="1" selected="selected">Pending</option>
                                                    <option value="15">Processed</option>
                                                    <option value="2">Processing</option>
                                                    <option value="11">Refunded</option>
                                                    <option value="12">Reversed</option>
                                                    <option value="3">Shipped</option>
                                                    <option value="16">Voided</option>
                                                </select>
                                                <input type="hidden" name="order_id" value="0">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label" for="input-comment">Comment</label>
                                            <div class="col-sm-10">
                                                <textarea name="comment" rows="5" id="input-comment" class="form-control"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label" for="input-affiliate">Affiliate</label>
                                            <div class="col-sm-10">
                                                <input type="text" name="affiliate" value="" id="input-affiliate" class="form-control" autocomplete="off"><ul class="dropdown-menu"></ul>
                                                <input type="hidden" name="affiliate_id" value="">
                                            </div>
                                        </div>
                                    </fieldset>
                                    <div class="row">
                                        <div class="col-sm-6 text-left">
                                            <button type="button" onclick="$('select[name=\'shipping_method\']').prop('disabled') ? $('a[href=\'#tab-payment\']').tab('show') : $('a[href=\'#tab-shipping\']').tab('show');" class="btn btn-default"><i class="fa fa-arrow-left"></i> Back</button>
                                        </div>
                                        <div class="col-sm-6 text-right">
                                            <button type="button" id="button-refresh" data-loading-text="Loading..." class="btn btn-warning"><i class="fa fa-refresh"></i></button>
                                            <button type="button" id="button-save" class="btn btn-primary"><i class="fa fa-check-circle"></i> Save</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </section>
            </div>
        </div>
        <!-- ck editor -->
        <script type="text/javascript" src="/admin/assets/ckeditor/ckeditor.js"></script>
        <!-- custom form component script for this page-->
        <script src="/admin/js/form-component.js"></script>

    </jsp:body>
</t:admingenericpage>