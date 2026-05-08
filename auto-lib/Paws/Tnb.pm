package Paws::Tnb;
  use Moose;
  sub service { 'tnb' }
  sub signing_name { 'tnb' }
  sub version { '2008-10-21' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CancelSolNetworkOperation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::CancelSolNetworkOperation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSolFunctionPackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::CreateSolFunctionPackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSolNetworkInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::CreateSolNetworkInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSolNetworkPackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::CreateSolNetworkPackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSolFunctionPackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::DeleteSolFunctionPackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSolNetworkInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::DeleteSolNetworkInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSolNetworkPackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::DeleteSolNetworkPackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSolFunctionInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::GetSolFunctionInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSolFunctionPackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::GetSolFunctionPackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSolFunctionPackageContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::GetSolFunctionPackageContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSolFunctionPackageDescriptor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::GetSolFunctionPackageDescriptor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSolNetworkInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::GetSolNetworkInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSolNetworkOperation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::GetSolNetworkOperation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSolNetworkPackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::GetSolNetworkPackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSolNetworkPackageContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::GetSolNetworkPackageContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSolNetworkPackageDescriptor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::GetSolNetworkPackageDescriptor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InstantiateSolNetworkInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::InstantiateSolNetworkInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSolFunctionInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::ListSolFunctionInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSolFunctionPackages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::ListSolFunctionPackages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSolNetworkInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::ListSolNetworkInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSolNetworkOperations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::ListSolNetworkOperations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSolNetworkPackages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::ListSolNetworkPackages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutSolFunctionPackageContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::PutSolFunctionPackageContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutSolNetworkPackageContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::PutSolNetworkPackageContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TerminateSolNetworkInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::TerminateSolNetworkInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSolFunctionPackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::UpdateSolFunctionPackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSolNetworkInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::UpdateSolNetworkInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSolNetworkPackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::UpdateSolNetworkPackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ValidateSolFunctionPackageContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::ValidateSolFunctionPackageContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ValidateSolNetworkPackageContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Tnb::ValidateSolNetworkPackageContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllSolFunctionInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSolFunctionInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSolFunctionInstances(@_, nextToken => $next_result->nextToken);
        push @{ $result->functionInstances }, @{ $next_result->functionInstances };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'functionInstances') foreach (@{ $result->functionInstances });
        $result = $self->ListSolFunctionInstances(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'functionInstances') foreach (@{ $result->functionInstances });
    }

    return undef
  }
  sub ListAllSolFunctionPackages {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSolFunctionPackages(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSolFunctionPackages(@_, nextToken => $next_result->nextToken);
        push @{ $result->functionPackages }, @{ $next_result->functionPackages };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'functionPackages') foreach (@{ $result->functionPackages });
        $result = $self->ListSolFunctionPackages(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'functionPackages') foreach (@{ $result->functionPackages });
    }

    return undef
  }
  sub ListAllSolNetworkInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSolNetworkInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSolNetworkInstances(@_, nextToken => $next_result->nextToken);
        push @{ $result->networkInstances }, @{ $next_result->networkInstances };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'networkInstances') foreach (@{ $result->networkInstances });
        $result = $self->ListSolNetworkInstances(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'networkInstances') foreach (@{ $result->networkInstances });
    }

    return undef
  }
  sub ListAllSolNetworkOperations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSolNetworkOperations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSolNetworkOperations(@_, nextToken => $next_result->nextToken);
        push @{ $result->networkOperations }, @{ $next_result->networkOperations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'networkOperations') foreach (@{ $result->networkOperations });
        $result = $self->ListSolNetworkOperations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'networkOperations') foreach (@{ $result->networkOperations });
    }

    return undef
  }
  sub ListAllSolNetworkPackages {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSolNetworkPackages(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSolNetworkPackages(@_, nextToken => $next_result->nextToken);
        push @{ $result->networkPackages }, @{ $next_result->networkPackages };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'networkPackages') foreach (@{ $result->networkPackages });
        $result = $self->ListSolNetworkPackages(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'networkPackages') foreach (@{ $result->networkPackages });
    }

    return undef
  }


  sub operations { qw/CancelSolNetworkOperation CreateSolFunctionPackage CreateSolNetworkInstance CreateSolNetworkPackage DeleteSolFunctionPackage DeleteSolNetworkInstance DeleteSolNetworkPackage GetSolFunctionInstance GetSolFunctionPackage GetSolFunctionPackageContent GetSolFunctionPackageDescriptor GetSolNetworkInstance GetSolNetworkOperation GetSolNetworkPackage GetSolNetworkPackageContent GetSolNetworkPackageDescriptor InstantiateSolNetworkInstance ListSolFunctionInstances ListSolFunctionPackages ListSolNetworkInstances ListSolNetworkOperations ListSolNetworkPackages ListTagsForResource PutSolFunctionPackageContent PutSolNetworkPackageContent TagResource TerminateSolNetworkInstance UntagResource UpdateSolFunctionPackage UpdateSolNetworkInstance UpdateSolNetworkPackage ValidateSolFunctionPackageContent ValidateSolNetworkPackageContent / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb - Perl Interface to AWS AWS Telco Network Builder

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Tnb');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Web Services Telco Network Builder (TNB) is a network automation
service that helps you deploy and manage telecom networks. AWS TNB
helps you with the lifecycle management of your telecommunication
network functions throughout planning, deployment, and post-deployment
activities.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CancelSolNetworkOperation

=over

=item NsLcmOpOccId => Str


=back

Each argument is described in detail in: L<Paws::Tnb::CancelSolNetworkOperation>

Returns: nothing

Cancels a network operation.

A network operation is any operation that is done to your network, such
as network instance instantiation or termination.


=head2 CreateSolFunctionPackage

=over

=item [Tags => L<Paws::Tnb::TagMap>]


=back

Each argument is described in detail in: L<Paws::Tnb::CreateSolFunctionPackage>

Returns: a L<Paws::Tnb::CreateSolFunctionPackageOutput> instance

Creates a function package.

A function package is a .zip file in CSAR (Cloud Service Archive)
format that contains a network function (an ETSI standard
telecommunication application) and function package descriptor that
uses the TOSCA standard to describe how the network functions should
run on your network. For more information, see Function packages
(https://docs.aws.amazon.com/tnb/latest/ug/function-packages.html) in
the I<Amazon Web Services Telco Network Builder User Guide>.

Creating a function package is the first step for creating a network in
AWS TNB. This request creates an empty container with an ID. The next
step is to upload the actual CSAR zip file into that empty container.
To upload function package content, see PutSolFunctionPackageContent
(https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolFunctionPackageContent.html).


=head2 CreateSolNetworkInstance

=over

=item NsdInfoId => Str

=item NsName => Str

=item [NsDescription => Str]

=item [Tags => L<Paws::Tnb::TagMap>]


=back

Each argument is described in detail in: L<Paws::Tnb::CreateSolNetworkInstance>

Returns: a L<Paws::Tnb::CreateSolNetworkInstanceOutput> instance

Creates a network instance.

A network instance is a single network created in Amazon Web Services
TNB that can be deployed and on which life-cycle operations (like
terminate, update, and delete) can be performed. Creating a network
instance is the third step after creating a network package. For more
information about network instances, Network instances
(https://docs.aws.amazon.com/tnb/latest/ug/network-instances.html) in
the I<Amazon Web Services Telco Network Builder User Guide>.

Once you create a network instance, you can instantiate it. To
instantiate a network, see InstantiateSolNetworkInstance
(https://docs.aws.amazon.com/tnb/latest/APIReference/API_InstantiateSolNetworkInstance.html).


=head2 CreateSolNetworkPackage

=over

=item [Tags => L<Paws::Tnb::TagMap>]


=back

Each argument is described in detail in: L<Paws::Tnb::CreateSolNetworkPackage>

Returns: a L<Paws::Tnb::CreateSolNetworkPackageOutput> instance

Creates a network package.

A network package is a .zip file in CSAR (Cloud Service Archive) format
defines the function packages you want to deploy and the Amazon Web
Services infrastructure you want to deploy them on. For more
information, see Network instances
(https://docs.aws.amazon.com/tnb/latest/ug/network-instances.html) in
the I<Amazon Web Services Telco Network Builder User Guide>.

A network package consists of a network service descriptor (NSD) file
(required) and any additional files (optional), such as scripts
specific to your needs. For example, if you have multiple function
packages in your network package, you can use the NSD to define which
network functions should run in certain VPCs, subnets, or EKS clusters.

This request creates an empty network package container with an ID.
Once you create a network package, you can upload the network package
content using PutSolNetworkPackageContent
(https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolNetworkPackageContent.html).


=head2 DeleteSolFunctionPackage

=over

=item VnfPkgId => Str


=back

Each argument is described in detail in: L<Paws::Tnb::DeleteSolFunctionPackage>

Returns: nothing

Deletes a function package.

A function package is a .zip file in CSAR (Cloud Service Archive)
format that contains a network function (an ETSI standard
telecommunication application) and function package descriptor that
uses the TOSCA standard to describe how the network functions should
run on your network.

To delete a function package, the package must be in a disabled state.
To disable a function package, see UpdateSolFunctionPackage
(https://docs.aws.amazon.com/tnb/latest/APIReference/API_UpdateSolFunctionPackage.html).


=head2 DeleteSolNetworkInstance

=over

=item NsInstanceId => Str


=back

Each argument is described in detail in: L<Paws::Tnb::DeleteSolNetworkInstance>

Returns: nothing

Deletes a network instance.

A network instance is a single network created in Amazon Web Services
TNB that can be deployed and on which life-cycle operations (like
terminate, update, and delete) can be performed.

To delete a network instance, the instance must be in a stopped or
terminated state. To terminate a network instance, see
TerminateSolNetworkInstance
(https://docs.aws.amazon.com/tnb/latest/APIReference/API_TerminateSolNetworkInstance.html).


=head2 DeleteSolNetworkPackage

=over

=item NsdInfoId => Str


=back

Each argument is described in detail in: L<Paws::Tnb::DeleteSolNetworkPackage>

Returns: nothing

Deletes network package.

A network package is a .zip file in CSAR (Cloud Service Archive) format
defines the function packages you want to deploy and the Amazon Web
Services infrastructure you want to deploy them on.

To delete a network package, the package must be in a disable state. To
disable a network package, see UpdateSolNetworkPackage
(https://docs.aws.amazon.com/tnb/latest/APIReference/API_UpdateSolNetworkPackage.html).


=head2 GetSolFunctionInstance

=over

=item VnfInstanceId => Str


=back

Each argument is described in detail in: L<Paws::Tnb::GetSolFunctionInstance>

Returns: a L<Paws::Tnb::GetSolFunctionInstanceOutput> instance

Gets the details of a network function instance, including the
instantiation state and metadata from the function package descriptor
in the network function package.

A network function instance is a function in a function package .


=head2 GetSolFunctionPackage

=over

=item VnfPkgId => Str


=back

Each argument is described in detail in: L<Paws::Tnb::GetSolFunctionPackage>

Returns: a L<Paws::Tnb::GetSolFunctionPackageOutput> instance

Gets the details of an individual function package, such as the
operational state and whether the package is in use.

A function package is a .zip file in CSAR (Cloud Service Archive)
format that contains a network function (an ETSI standard
telecommunication application) and function package descriptor that
uses the TOSCA standard to describe how the network functions should
run on your network..


=head2 GetSolFunctionPackageContent

=over

=item Accept => Str

=item VnfPkgId => Str


=back

Each argument is described in detail in: L<Paws::Tnb::GetSolFunctionPackageContent>

Returns: a L<Paws::Tnb::GetSolFunctionPackageContentOutput> instance

Gets the contents of a function package.

A function package is a .zip file in CSAR (Cloud Service Archive)
format that contains a network function (an ETSI standard
telecommunication application) and function package descriptor that
uses the TOSCA standard to describe how the network functions should
run on your network.


=head2 GetSolFunctionPackageDescriptor

=over

=item Accept => Str

=item VnfPkgId => Str


=back

Each argument is described in detail in: L<Paws::Tnb::GetSolFunctionPackageDescriptor>

Returns: a L<Paws::Tnb::GetSolFunctionPackageDescriptorOutput> instance

Gets a function package descriptor in a function package.

A function package descriptor is a .yaml file in a function package
that uses the TOSCA standard to describe how the network function in
the function package should run on your network.

A function package is a .zip file in CSAR (Cloud Service Archive)
format that contains a network function (an ETSI standard
telecommunication application) and function package descriptor that
uses the TOSCA standard to describe how the network functions should
run on your network.


=head2 GetSolNetworkInstance

=over

=item NsInstanceId => Str


=back

Each argument is described in detail in: L<Paws::Tnb::GetSolNetworkInstance>

Returns: a L<Paws::Tnb::GetSolNetworkInstanceOutput> instance

Gets the details of the network instance.

A network instance is a single network created in Amazon Web Services
TNB that can be deployed and on which life-cycle operations (like
terminate, update, and delete) can be performed.


=head2 GetSolNetworkOperation

=over

=item NsLcmOpOccId => Str


=back

Each argument is described in detail in: L<Paws::Tnb::GetSolNetworkOperation>

Returns: a L<Paws::Tnb::GetSolNetworkOperationOutput> instance

Gets the details of a network operation, including the tasks involved
in the network operation and the status of the tasks.

A network operation is any operation that is done to your network, such
as network instance instantiation or termination.


=head2 GetSolNetworkPackage

=over

=item NsdInfoId => Str


=back

Each argument is described in detail in: L<Paws::Tnb::GetSolNetworkPackage>

Returns: a L<Paws::Tnb::GetSolNetworkPackageOutput> instance

Gets the details of a network package.

A network package is a .zip file in CSAR (Cloud Service Archive) format
defines the function packages you want to deploy and the Amazon Web
Services infrastructure you want to deploy them on.


=head2 GetSolNetworkPackageContent

=over

=item Accept => Str

=item NsdInfoId => Str


=back

Each argument is described in detail in: L<Paws::Tnb::GetSolNetworkPackageContent>

Returns: a L<Paws::Tnb::GetSolNetworkPackageContentOutput> instance

Gets the contents of a network package.

A network package is a .zip file in CSAR (Cloud Service Archive) format
defines the function packages you want to deploy and the Amazon Web
Services infrastructure you want to deploy them on.


=head2 GetSolNetworkPackageDescriptor

=over

=item NsdInfoId => Str


=back

Each argument is described in detail in: L<Paws::Tnb::GetSolNetworkPackageDescriptor>

Returns: a L<Paws::Tnb::GetSolNetworkPackageDescriptorOutput> instance

Gets the content of the network service descriptor.

A network service descriptor is a .yaml file in a network package that
uses the TOSCA standard to describe the network functions you want to
deploy and the Amazon Web Services infrastructure you want to deploy
the network functions on.


=head2 InstantiateSolNetworkInstance

=over

=item NsInstanceId => Str

=item [AdditionalParamsForNs => L<Paws::Tnb::Document>]

=item [DryRun => Bool]

=item [Tags => L<Paws::Tnb::TagMap>]


=back

Each argument is described in detail in: L<Paws::Tnb::InstantiateSolNetworkInstance>

Returns: a L<Paws::Tnb::InstantiateSolNetworkInstanceOutput> instance

Instantiates a network instance.

A network instance is a single network created in Amazon Web Services
TNB that can be deployed and on which life-cycle operations (like
terminate, update, and delete) can be performed.

Before you can instantiate a network instance, you have to create a
network instance. For more information, see CreateSolNetworkInstance
(https://docs.aws.amazon.com/tnb/latest/APIReference/API_CreateSolNetworkInstance.html).


=head2 ListSolFunctionInstances

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Tnb::ListSolFunctionInstances>

Returns: a L<Paws::Tnb::ListSolFunctionInstancesOutput> instance

Lists network function instances.

A network function instance is a function in a function package .


=head2 ListSolFunctionPackages

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Tnb::ListSolFunctionPackages>

Returns: a L<Paws::Tnb::ListSolFunctionPackagesOutput> instance

Lists information about function packages.

A function package is a .zip file in CSAR (Cloud Service Archive)
format that contains a network function (an ETSI standard
telecommunication application) and function package descriptor that
uses the TOSCA standard to describe how the network functions should
run on your network.


=head2 ListSolNetworkInstances

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Tnb::ListSolNetworkInstances>

Returns: a L<Paws::Tnb::ListSolNetworkInstancesOutput> instance

Lists your network instances.

A network instance is a single network created in Amazon Web Services
TNB that can be deployed and on which life-cycle operations (like
terminate, update, and delete) can be performed.


=head2 ListSolNetworkOperations

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [NsInstanceId => Str]


=back

Each argument is described in detail in: L<Paws::Tnb::ListSolNetworkOperations>

Returns: a L<Paws::Tnb::ListSolNetworkOperationsOutput> instance

Lists details for a network operation, including when the operation
started and the status of the operation.

A network operation is any operation that is done to your network, such
as network instance instantiation or termination.


=head2 ListSolNetworkPackages

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Tnb::ListSolNetworkPackages>

Returns: a L<Paws::Tnb::ListSolNetworkPackagesOutput> instance

Lists network packages.

A network package is a .zip file in CSAR (Cloud Service Archive) format
defines the function packages you want to deploy and the Amazon Web
Services infrastructure you want to deploy them on.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Tnb::ListTagsForResource>

Returns: a L<Paws::Tnb::ListTagsForResourceOutput> instance

Lists tags for AWS TNB resources.


=head2 PutSolFunctionPackageContent

=over

=item File => Str

=item VnfPkgId => Str

=item [ContentType => Str]


=back

Each argument is described in detail in: L<Paws::Tnb::PutSolFunctionPackageContent>

Returns: a L<Paws::Tnb::PutSolFunctionPackageContentOutput> instance

Uploads the contents of a function package.

A function package is a .zip file in CSAR (Cloud Service Archive)
format that contains a network function (an ETSI standard
telecommunication application) and function package descriptor that
uses the TOSCA standard to describe how the network functions should
run on your network.


=head2 PutSolNetworkPackageContent

=over

=item File => Str

=item NsdInfoId => Str

=item [ContentType => Str]


=back

Each argument is described in detail in: L<Paws::Tnb::PutSolNetworkPackageContent>

Returns: a L<Paws::Tnb::PutSolNetworkPackageContentOutput> instance

Uploads the contents of a network package.

A network package is a .zip file in CSAR (Cloud Service Archive) format
defines the function packages you want to deploy and the Amazon Web
Services infrastructure you want to deploy them on.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Tnb::TagMap>


=back

Each argument is described in detail in: L<Paws::Tnb::TagResource>

Returns: a L<Paws::Tnb::TagResourceOutput> instance

Tags an AWS TNB resource.

A tag is a label that you assign to an Amazon Web Services resource.
Each tag consists of a key and an optional value. You can use tags to
search and filter your resources or track your Amazon Web Services
costs.


=head2 TerminateSolNetworkInstance

=over

=item NsInstanceId => Str

=item [Tags => L<Paws::Tnb::TagMap>]


=back

Each argument is described in detail in: L<Paws::Tnb::TerminateSolNetworkInstance>

Returns: a L<Paws::Tnb::TerminateSolNetworkInstanceOutput> instance

Terminates a network instance.

A network instance is a single network created in Amazon Web Services
TNB that can be deployed and on which life-cycle operations (like
terminate, update, and delete) can be performed.

You must terminate a network instance before you can delete it.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Tnb::UntagResource>

Returns: a L<Paws::Tnb::UntagResourceOutput> instance

Untags an AWS TNB resource.

A tag is a label that you assign to an Amazon Web Services resource.
Each tag consists of a key and an optional value. You can use tags to
search and filter your resources or track your Amazon Web Services
costs.


=head2 UpdateSolFunctionPackage

=over

=item OperationalState => Str

=item VnfPkgId => Str


=back

Each argument is described in detail in: L<Paws::Tnb::UpdateSolFunctionPackage>

Returns: a L<Paws::Tnb::UpdateSolFunctionPackageOutput> instance

Updates the operational state of function package.

A function package is a .zip file in CSAR (Cloud Service Archive)
format that contains a network function (an ETSI standard
telecommunication application) and function package descriptor that
uses the TOSCA standard to describe how the network functions should
run on your network.


=head2 UpdateSolNetworkInstance

=over

=item NsInstanceId => Str

=item UpdateType => Str

=item [ModifyVnfInfoData => L<Paws::Tnb::UpdateSolNetworkModify>]

=item [Tags => L<Paws::Tnb::TagMap>]

=item [UpdateNs => L<Paws::Tnb::UpdateSolNetworkServiceData>]


=back

Each argument is described in detail in: L<Paws::Tnb::UpdateSolNetworkInstance>

Returns: a L<Paws::Tnb::UpdateSolNetworkInstanceOutput> instance

Update a network instance.

A network instance is a single network created in Amazon Web Services
TNB that can be deployed and on which life-cycle operations (like
terminate, update, and delete) can be performed.

Choose the I<updateType> parameter to target the necessary update of
the network instance.


=head2 UpdateSolNetworkPackage

=over

=item NsdInfoId => Str

=item NsdOperationalState => Str


=back

Each argument is described in detail in: L<Paws::Tnb::UpdateSolNetworkPackage>

Returns: a L<Paws::Tnb::UpdateSolNetworkPackageOutput> instance

Updates the operational state of a network package.

A network package is a .zip file in CSAR (Cloud Service Archive) format
defines the function packages you want to deploy and the Amazon Web
Services infrastructure you want to deploy them on.

A network service descriptor is a .yaml file in a network package that
uses the TOSCA standard to describe the network functions you want to
deploy and the Amazon Web Services infrastructure you want to deploy
the network functions on.


=head2 ValidateSolFunctionPackageContent

=over

=item File => Str

=item VnfPkgId => Str

=item [ContentType => Str]


=back

Each argument is described in detail in: L<Paws::Tnb::ValidateSolFunctionPackageContent>

Returns: a L<Paws::Tnb::ValidateSolFunctionPackageContentOutput> instance

Validates function package content. This can be used as a dry run
before uploading function package content with
PutSolFunctionPackageContent
(https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolFunctionPackageContent.html).

A function package is a .zip file in CSAR (Cloud Service Archive)
format that contains a network function (an ETSI standard
telecommunication application) and function package descriptor that
uses the TOSCA standard to describe how the network functions should
run on your network.


=head2 ValidateSolNetworkPackageContent

=over

=item File => Str

=item NsdInfoId => Str

=item [ContentType => Str]


=back

Each argument is described in detail in: L<Paws::Tnb::ValidateSolNetworkPackageContent>

Returns: a L<Paws::Tnb::ValidateSolNetworkPackageContentOutput> instance

Validates network package content. This can be used as a dry run before
uploading network package content with PutSolNetworkPackageContent
(https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolNetworkPackageContent.html).

A network package is a .zip file in CSAR (Cloud Service Archive) format
defines the function packages you want to deploy and the Amazon Web
Services infrastructure you want to deploy them on.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllSolFunctionInstances(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllSolFunctionInstances([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - functionInstances, passing the object as the first parameter, and the string 'functionInstances' as the second parameter 

If not, it will return a a L<Paws::Tnb::ListSolFunctionInstancesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSolFunctionPackages(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllSolFunctionPackages([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - functionPackages, passing the object as the first parameter, and the string 'functionPackages' as the second parameter 

If not, it will return a a L<Paws::Tnb::ListSolFunctionPackagesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSolNetworkInstances(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllSolNetworkInstances([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - networkInstances, passing the object as the first parameter, and the string 'networkInstances' as the second parameter 

If not, it will return a a L<Paws::Tnb::ListSolNetworkInstancesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSolNetworkOperations(sub { },[MaxResults => Int, NextToken => Str, NsInstanceId => Str])

=head2 ListAllSolNetworkOperations([MaxResults => Int, NextToken => Str, NsInstanceId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - networkOperations, passing the object as the first parameter, and the string 'networkOperations' as the second parameter 

If not, it will return a a L<Paws::Tnb::ListSolNetworkOperationsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSolNetworkPackages(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllSolNetworkPackages([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - networkPackages, passing the object as the first parameter, and the string 'networkPackages' as the second parameter 

If not, it will return a a L<Paws::Tnb::ListSolNetworkPackagesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

