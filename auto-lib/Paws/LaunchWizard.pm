package Paws::LaunchWizard;
  use Moose;
  sub service { 'launchwizard' }
  sub signing_name { 'launchwizard' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LaunchWizard::CreateDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LaunchWizard::DeleteDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LaunchWizard::GetDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LaunchWizard::GetWorkload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkloadDeploymentPattern {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LaunchWizard::GetWorkloadDeploymentPattern', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeploymentEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LaunchWizard::ListDeploymentEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeployments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LaunchWizard::ListDeployments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LaunchWizard::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkloadDeploymentPatterns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LaunchWizard::ListWorkloadDeploymentPatterns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkloads {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LaunchWizard::ListWorkloads', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LaunchWizard::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LaunchWizard::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllDeploymentEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDeploymentEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDeploymentEvents(@_, nextToken => $next_result->nextToken);
        push @{ $result->deploymentEvents }, @{ $next_result->deploymentEvents };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'deploymentEvents') foreach (@{ $result->deploymentEvents });
        $result = $self->ListDeploymentEvents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'deploymentEvents') foreach (@{ $result->deploymentEvents });
    }

    return undef
  }
  sub ListAllDeployments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDeployments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDeployments(@_, nextToken => $next_result->nextToken);
        push @{ $result->deployments }, @{ $next_result->deployments };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'deployments') foreach (@{ $result->deployments });
        $result = $self->ListDeployments(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'deployments') foreach (@{ $result->deployments });
    }

    return undef
  }
  sub ListAllWorkloadDeploymentPatterns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkloadDeploymentPatterns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWorkloadDeploymentPatterns(@_, nextToken => $next_result->nextToken);
        push @{ $result->workloadDeploymentPatterns }, @{ $next_result->workloadDeploymentPatterns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'workloadDeploymentPatterns') foreach (@{ $result->workloadDeploymentPatterns });
        $result = $self->ListWorkloadDeploymentPatterns(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'workloadDeploymentPatterns') foreach (@{ $result->workloadDeploymentPatterns });
    }

    return undef
  }
  sub ListAllWorkloads {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkloads(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWorkloads(@_, nextToken => $next_result->nextToken);
        push @{ $result->workloads }, @{ $next_result->workloads };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'workloads') foreach (@{ $result->workloads });
        $result = $self->ListWorkloads(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'workloads') foreach (@{ $result->workloads });
    }

    return undef
  }


  sub operations { qw/CreateDeployment DeleteDeployment GetDeployment GetWorkload GetWorkloadDeploymentPattern ListDeploymentEvents ListDeployments ListTagsForResource ListWorkloadDeploymentPatterns ListWorkloads TagResource UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LaunchWizard - Perl Interface to AWS AWS Launch Wizard

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('LaunchWizard');
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

Launch Wizard offers a guided way of sizing, configuring, and deploying
Amazon Web Services resources for third party applications, such as
Microsoft SQL Server Always On and HANA based SAP systems, without the
need to manually identify and provision individual Amazon Web Services
resources.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/launchwizard-2018-05-10>


=head1 METHODS

=head2 CreateDeployment

=over

=item DeploymentPatternName => Str

=item Name => Str

=item Specifications => L<Paws::LaunchWizard::DeploymentSpecifications>

=item WorkloadName => Str

=item [DryRun => Bool]

=item [Tags => L<Paws::LaunchWizard::Tags>]


=back

Each argument is described in detail in: L<Paws::LaunchWizard::CreateDeployment>

Returns: a L<Paws::LaunchWizard::CreateDeploymentOutput> instance

Creates a deployment for the given workload. Deployments created by
this operation are not available in the Launch Wizard console to use
the C<Clone deployment> action on.


=head2 DeleteDeployment

=over

=item DeploymentId => Str


=back

Each argument is described in detail in: L<Paws::LaunchWizard::DeleteDeployment>

Returns: a L<Paws::LaunchWizard::DeleteDeploymentOutput> instance

Deletes a deployment.


=head2 GetDeployment

=over

=item DeploymentId => Str


=back

Each argument is described in detail in: L<Paws::LaunchWizard::GetDeployment>

Returns: a L<Paws::LaunchWizard::GetDeploymentOutput> instance

Returns information about the deployment.


=head2 GetWorkload

=over

=item WorkloadName => Str


=back

Each argument is described in detail in: L<Paws::LaunchWizard::GetWorkload>

Returns: a L<Paws::LaunchWizard::GetWorkloadOutput> instance

Returns information about a workload.


=head2 GetWorkloadDeploymentPattern

=over

=item DeploymentPatternName => Str

=item WorkloadName => Str


=back

Each argument is described in detail in: L<Paws::LaunchWizard::GetWorkloadDeploymentPattern>

Returns: a L<Paws::LaunchWizard::GetWorkloadDeploymentPatternOutput> instance

Returns details for a given workload and deployment pattern, including
the available specifications. You can use the ListWorkloads
(https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloads.html)
operation to discover the available workload names and the
ListWorkloadDeploymentPatterns
(https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloadDeploymentPatterns.html)
operation to discover the available deployment pattern names of a given
workload.


=head2 ListDeploymentEvents

=over

=item DeploymentId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LaunchWizard::ListDeploymentEvents>

Returns: a L<Paws::LaunchWizard::ListDeploymentEventsOutput> instance

Lists the events of a deployment.


=head2 ListDeployments

=over

=item [Filters => ArrayRef[L<Paws::LaunchWizard::DeploymentFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LaunchWizard::ListDeployments>

Returns: a L<Paws::LaunchWizard::ListDeploymentsOutput> instance

Lists the deployments that have been created.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::LaunchWizard::ListTagsForResource>

Returns: a L<Paws::LaunchWizard::ListTagsForResourceOutput> instance

Lists the tags associated with a specified resource.


=head2 ListWorkloadDeploymentPatterns

=over

=item WorkloadName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LaunchWizard::ListWorkloadDeploymentPatterns>

Returns: a L<Paws::LaunchWizard::ListWorkloadDeploymentPatternsOutput> instance

Lists the workload deployment patterns for a given workload name. You
can use the ListWorkloads
(https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloads.html)
operation to discover the available workload names.


=head2 ListWorkloads

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LaunchWizard::ListWorkloads>

Returns: a L<Paws::LaunchWizard::ListWorkloadsOutput> instance

Lists the available workload names. You can use the
ListWorkloadDeploymentPatterns
(https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloadDeploymentPatterns.html)
operation to discover the available deployment patterns for a given
workload.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::LaunchWizard::Tags>


=back

Each argument is described in detail in: L<Paws::LaunchWizard::TagResource>

Returns: a L<Paws::LaunchWizard::TagResourceOutput> instance

Adds the specified tags to the given resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::LaunchWizard::UntagResource>

Returns: a L<Paws::LaunchWizard::UntagResourceOutput> instance

Removes the specified tags from the given resource.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllDeploymentEvents(sub { },DeploymentId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDeploymentEvents(DeploymentId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - deploymentEvents, passing the object as the first parameter, and the string 'deploymentEvents' as the second parameter 

If not, it will return a a L<Paws::LaunchWizard::ListDeploymentEventsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDeployments(sub { },[Filters => ArrayRef[L<Paws::LaunchWizard::DeploymentFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllDeployments([Filters => ArrayRef[L<Paws::LaunchWizard::DeploymentFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - deployments, passing the object as the first parameter, and the string 'deployments' as the second parameter 

If not, it will return a a L<Paws::LaunchWizard::ListDeploymentsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkloadDeploymentPatterns(sub { },WorkloadName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllWorkloadDeploymentPatterns(WorkloadName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - workloadDeploymentPatterns, passing the object as the first parameter, and the string 'workloadDeploymentPatterns' as the second parameter 

If not, it will return a a L<Paws::LaunchWizard::ListWorkloadDeploymentPatternsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkloads(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllWorkloads([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - workloads, passing the object as the first parameter, and the string 'workloads' as the second parameter 

If not, it will return a a L<Paws::LaunchWizard::ListWorkloadsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

