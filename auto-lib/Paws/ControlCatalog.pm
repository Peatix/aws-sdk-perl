package Paws::ControlCatalog;
  use Moose;
  sub service { 'controlcatalog' }
  sub signing_name { 'controlcatalog' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub GetControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlCatalog::GetControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCommonControls {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlCatalog::ListCommonControls', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListControls {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlCatalog::ListControls', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlCatalog::ListDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListObjectives {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlCatalog::ListObjectives', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllCommonControls {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCommonControls(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCommonControls(@_, NextToken => $next_result->NextToken);
        push @{ $result->CommonControls }, @{ $next_result->CommonControls };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CommonControls') foreach (@{ $result->CommonControls });
        $result = $self->ListCommonControls(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CommonControls') foreach (@{ $result->CommonControls });
    }

    return undef
  }
  sub ListAllControls {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListControls(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListControls(@_, NextToken => $next_result->NextToken);
        push @{ $result->Controls }, @{ $next_result->Controls };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Controls') foreach (@{ $result->Controls });
        $result = $self->ListControls(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Controls') foreach (@{ $result->Controls });
    }

    return undef
  }
  sub ListAllDomains {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDomains(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDomains(@_, NextToken => $next_result->NextToken);
        push @{ $result->Domains }, @{ $next_result->Domains };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Domains') foreach (@{ $result->Domains });
        $result = $self->ListDomains(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Domains') foreach (@{ $result->Domains });
    }

    return undef
  }
  sub ListAllObjectives {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListObjectives(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListObjectives(@_, NextToken => $next_result->NextToken);
        push @{ $result->Objectives }, @{ $next_result->Objectives };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Objectives') foreach (@{ $result->Objectives });
        $result = $self->ListObjectives(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Objectives') foreach (@{ $result->Objectives });
    }

    return undef
  }


  sub operations { qw/GetControl ListCommonControls ListControls ListDomains ListObjectives / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlCatalog - Perl Interface to AWS AWS Control Catalog

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ControlCatalog');
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

Welcome to the Amazon Web Services Control Catalog API reference. This
guide is for developers who need detailed information about how to
programmatically identify and filter the common controls and related
metadata that are available to Amazon Web Services customers. This API
reference provides descriptions, syntax, and usage examples for each of
the actions and data types that are supported by Amazon Web Services
Control Catalog.

Use the following links to get started with the Amazon Web Services
Control Catalog API:

=over

=item *

Actions
(https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_Operations.html):
An alphabetical list of all Control Catalog API operations.

=item *

Data types
(https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_Types.html):
An alphabetical list of all Control Catalog data types.

=item *

Common parameters
(https://docs.aws.amazon.com/controlcatalog/latest/APIReference/CommonParameters.html):
Parameters that all operations can use.

=item *

Common errors
(https://docs.aws.amazon.com/controlcatalog/latest/APIReference/CommonErrors.html):
Client and server errors that all operations can return.

=back


For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 GetControl

=over

=item ControlArn => Str


=back

Each argument is described in detail in: L<Paws::ControlCatalog::GetControl>

Returns: a L<Paws::ControlCatalog::GetControlResponse> instance

Returns details about a specific control, most notably a list of Amazon
Web Services Regions where this control is supported. Input a value for
the I<ControlArn> parameter, in ARN form. C<GetControl> accepts
I<controltower> or I<controlcatalog> control ARNs as input. Returns a
I<controlcatalog> ARN format.

In the API response, controls that have the value C<GLOBAL> in the
C<Scope> field do not show the C<DeployableRegions> field, because it
does not apply. Controls that have the value C<REGIONAL> in the
C<Scope> field return a value for the C<DeployableRegions> field, as
shown in the example.


=head2 ListCommonControls

=over

=item [CommonControlFilter => L<Paws::ControlCatalog::CommonControlFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ControlCatalog::ListCommonControls>

Returns: a L<Paws::ControlCatalog::ListCommonControlsResponse> instance

Returns a paginated list of common controls from the Amazon Web
Services Control Catalog.

You can apply an optional filter to see common controls that have a
specific objective. If you donE<rsquo>t provide a filter, the operation
returns all common controls.


=head2 ListControls

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ControlCatalog::ListControls>

Returns: a L<Paws::ControlCatalog::ListControlsResponse> instance

Returns a paginated list of all available controls in the Amazon Web
Services Control Catalog library. Allows you to discover available
controls. The list of controls is given as structures of type
I<controlSummary>. The ARN is returned in the global I<controlcatalog>
format, as shown in the examples.


=head2 ListDomains

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ControlCatalog::ListDomains>

Returns: a L<Paws::ControlCatalog::ListDomainsResponse> instance

Returns a paginated list of domains from the Amazon Web Services
Control Catalog.


=head2 ListObjectives

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ObjectiveFilter => L<Paws::ControlCatalog::ObjectiveFilter>]


=back

Each argument is described in detail in: L<Paws::ControlCatalog::ListObjectives>

Returns: a L<Paws::ControlCatalog::ListObjectivesResponse> instance

Returns a paginated list of objectives from the Amazon Web Services
Control Catalog.

You can apply an optional filter to see the objectives that belong to a
specific domain. If you donE<rsquo>t provide a filter, the operation
returns all objectives.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllCommonControls(sub { },[CommonControlFilter => L<Paws::ControlCatalog::CommonControlFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllCommonControls([CommonControlFilter => L<Paws::ControlCatalog::CommonControlFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CommonControls, passing the object as the first parameter, and the string 'CommonControls' as the second parameter 

If not, it will return a a L<Paws::ControlCatalog::ListCommonControlsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllControls(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllControls([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Controls, passing the object as the first parameter, and the string 'Controls' as the second parameter 

If not, it will return a a L<Paws::ControlCatalog::ListControlsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDomains(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDomains([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Domains, passing the object as the first parameter, and the string 'Domains' as the second parameter 

If not, it will return a a L<Paws::ControlCatalog::ListDomainsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllObjectives(sub { },[MaxResults => Int, NextToken => Str, ObjectiveFilter => L<Paws::ControlCatalog::ObjectiveFilter>])

=head2 ListAllObjectives([MaxResults => Int, NextToken => Str, ObjectiveFilter => L<Paws::ControlCatalog::ObjectiveFilter>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Objectives, passing the object as the first parameter, and the string 'Objectives' as the second parameter 

If not, it will return a a L<Paws::ControlCatalog::ListObjectivesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

