package Paws::CloudControl;
  use Moose;
  sub service { 'cloudcontrolapi' }
  sub signing_name { 'cloudcontrolapi' }
  sub version { '2021-09-30' }
  sub target_prefix { 'CloudApiService' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CancelResourceRequest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudControl::CancelResourceRequest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudControl::CreateResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudControl::DeleteResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudControl::GetResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceRequestStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudControl::GetResourceRequestStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceRequests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudControl::ListResourceRequests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudControl::ListResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudControl::UpdateResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllResourceRequests {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResourceRequests(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResourceRequests(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResourceRequestStatusSummaries }, @{ $next_result->ResourceRequestStatusSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResourceRequestStatusSummaries') foreach (@{ $result->ResourceRequestStatusSummaries });
        $result = $self->ListResourceRequests(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResourceRequestStatusSummaries') foreach (@{ $result->ResourceRequestStatusSummaries });
    }

    return undef
  }
  sub ListAllResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResources(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResourceDescriptions }, @{ $next_result->ResourceDescriptions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResourceDescriptions') foreach (@{ $result->ResourceDescriptions });
        $result = $self->ListResources(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResourceDescriptions') foreach (@{ $result->ResourceDescriptions });
    }

    return undef
  }


  sub operations { qw/CancelResourceRequest CreateResource DeleteResource GetResource GetResourceRequestStatus ListResourceRequests ListResources UpdateResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudControl - Perl Interface to AWS AWS Cloud Control API

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CloudControl');
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

For more information about Amazon Web Services Cloud Control API, see
the Amazon Web Services Cloud Control API User Guide
(https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/what-is-cloudcontrolapi.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudcontrolapi-2021-09-30>


=head1 METHODS

=head2 CancelResourceRequest

=over

=item RequestToken => Str


=back

Each argument is described in detail in: L<Paws::CloudControl::CancelResourceRequest>

Returns: a L<Paws::CloudControl::CancelResourceRequestOutput> instance

Cancels the specified resource operation request. For more information,
see Canceling resource operation requests
(https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-cancel)
in the I<Amazon Web Services Cloud Control API User Guide>.

Only resource operations requests with a status of C<PENDING> or
C<IN_PROGRESS> can be canceled.


=head2 CreateResource

=over

=item DesiredState => Str

=item TypeName => Str

=item [ClientToken => Str]

=item [RoleArn => Str]

=item [TypeVersionId => Str]


=back

Each argument is described in detail in: L<Paws::CloudControl::CreateResource>

Returns: a L<Paws::CloudControl::CreateResourceOutput> instance

Creates the specified resource. For more information, see Creating a
resource
(https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-create.html)
in the I<Amazon Web Services Cloud Control API User Guide>.

After you have initiated a resource creation request, you can monitor
the progress of your request by calling GetResourceRequestStatus
(https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html)
using the C<RequestToken> of the C<ProgressEvent> type returned by
C<CreateResource>.


=head2 DeleteResource

=over

=item Identifier => Str

=item TypeName => Str

=item [ClientToken => Str]

=item [RoleArn => Str]

=item [TypeVersionId => Str]


=back

Each argument is described in detail in: L<Paws::CloudControl::DeleteResource>

Returns: a L<Paws::CloudControl::DeleteResourceOutput> instance

Deletes the specified resource. For details, see Deleting a resource
(https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-delete.html)
in the I<Amazon Web Services Cloud Control API User Guide>.

After you have initiated a resource deletion request, you can monitor
the progress of your request by calling GetResourceRequestStatus
(https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html)
using the C<RequestToken> of the C<ProgressEvent> returned by
C<DeleteResource>.


=head2 GetResource

=over

=item Identifier => Str

=item TypeName => Str

=item [RoleArn => Str]

=item [TypeVersionId => Str]


=back

Each argument is described in detail in: L<Paws::CloudControl::GetResource>

Returns: a L<Paws::CloudControl::GetResourceOutput> instance

Returns information about the current state of the specified resource.
For details, see Reading a resource's current state
(https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-read.html).

You can use this action to return information about an existing
resource in your account and Amazon Web Services Region, whether those
resources were provisioned using Cloud Control API.


=head2 GetResourceRequestStatus

=over

=item RequestToken => Str


=back

Each argument is described in detail in: L<Paws::CloudControl::GetResourceRequestStatus>

Returns: a L<Paws::CloudControl::GetResourceRequestStatusOutput> instance

Returns the current status of a resource operation request. For more
information, see Tracking the progress of resource operation requests
(https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-track)
in the I<Amazon Web Services Cloud Control API User Guide>.


=head2 ListResourceRequests

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceRequestStatusFilter => L<Paws::CloudControl::ResourceRequestStatusFilter>]


=back

Each argument is described in detail in: L<Paws::CloudControl::ListResourceRequests>

Returns: a L<Paws::CloudControl::ListResourceRequestsOutput> instance

Returns existing resource operation requests. This includes requests of
all status types. For more information, see Listing active resource
operation requests
(https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-list)
in the I<Amazon Web Services Cloud Control API User Guide>.

Resource operation requests expire after 7 days.


=head2 ListResources

=over

=item TypeName => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceModel => Str]

=item [RoleArn => Str]

=item [TypeVersionId => Str]


=back

Each argument is described in detail in: L<Paws::CloudControl::ListResources>

Returns: a L<Paws::CloudControl::ListResourcesOutput> instance

Returns information about the specified resources. For more
information, see Discovering resources
(https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-list.html)
in the I<Amazon Web Services Cloud Control API User Guide>.

You can use this action to return information about existing resources
in your account and Amazon Web Services Region, whether those resources
were provisioned using Cloud Control API.


=head2 UpdateResource

=over

=item Identifier => Str

=item PatchDocument => Str

=item TypeName => Str

=item [ClientToken => Str]

=item [RoleArn => Str]

=item [TypeVersionId => Str]


=back

Each argument is described in detail in: L<Paws::CloudControl::UpdateResource>

Returns: a L<Paws::CloudControl::UpdateResourceOutput> instance

Updates the specified property values in the resource.

You specify your resource property updates as a list of patch
operations contained in a JSON patch document that adheres to the I<RFC
6902 - JavaScript Object Notation (JSON) Patch>
(https://datatracker.ietf.org/doc/html/rfc6902) standard.

For details on how Cloud Control API performs resource update
operations, see Updating a resource
(https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-update.html)
in the I<Amazon Web Services Cloud Control API User Guide>.

After you have initiated a resource update request, you can monitor the
progress of your request by calling GetResourceRequestStatus
(https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html)
using the C<RequestToken> of the C<ProgressEvent> returned by
C<UpdateResource>.

For more information about the properties of a specific resource, refer
to the related topic for the resource in the Resource and property
types reference
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html)
in the I<CloudFormation Users Guide>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllResourceRequests(sub { },[MaxResults => Int, NextToken => Str, ResourceRequestStatusFilter => L<Paws::CloudControl::ResourceRequestStatusFilter>])

=head2 ListAllResourceRequests([MaxResults => Int, NextToken => Str, ResourceRequestStatusFilter => L<Paws::CloudControl::ResourceRequestStatusFilter>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResourceRequestStatusSummaries, passing the object as the first parameter, and the string 'ResourceRequestStatusSummaries' as the second parameter 

If not, it will return a a L<Paws::CloudControl::ListResourceRequestsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResources(sub { },TypeName => Str, [MaxResults => Int, NextToken => Str, ResourceModel => Str, RoleArn => Str, TypeVersionId => Str])

=head2 ListAllResources(TypeName => Str, [MaxResults => Int, NextToken => Str, ResourceModel => Str, RoleArn => Str, TypeVersionId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResourceDescriptions, passing the object as the first parameter, and the string 'ResourceDescriptions' as the second parameter 

If not, it will return a a L<Paws::CloudControl::ListResourcesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

