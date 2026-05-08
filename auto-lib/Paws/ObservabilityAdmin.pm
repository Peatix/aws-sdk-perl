package Paws::ObservabilityAdmin;
  use Moose;
  sub service { 'observabilityadmin' }
  sub signing_name { 'observabilityadmin' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub GetTelemetryEvaluationStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ObservabilityAdmin::GetTelemetryEvaluationStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTelemetryEvaluationStatusForOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ObservabilityAdmin::GetTelemetryEvaluationStatusForOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceTelemetry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ObservabilityAdmin::ListResourceTelemetry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceTelemetryForOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ObservabilityAdmin::ListResourceTelemetryForOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTelemetryEvaluation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ObservabilityAdmin::StartTelemetryEvaluation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTelemetryEvaluationForOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ObservabilityAdmin::StartTelemetryEvaluationForOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopTelemetryEvaluation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ObservabilityAdmin::StopTelemetryEvaluation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopTelemetryEvaluationForOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ObservabilityAdmin::StopTelemetryEvaluationForOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllResourceTelemetry {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResourceTelemetry(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResourceTelemetry(@_, NextToken => $next_result->NextToken);
        push @{ $result->TelemetryConfigurations }, @{ $next_result->TelemetryConfigurations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TelemetryConfigurations') foreach (@{ $result->TelemetryConfigurations });
        $result = $self->ListResourceTelemetry(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TelemetryConfigurations') foreach (@{ $result->TelemetryConfigurations });
    }

    return undef
  }
  sub ListAllResourceTelemetryForOrganization {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResourceTelemetryForOrganization(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResourceTelemetryForOrganization(@_, NextToken => $next_result->NextToken);
        push @{ $result->TelemetryConfigurations }, @{ $next_result->TelemetryConfigurations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TelemetryConfigurations') foreach (@{ $result->TelemetryConfigurations });
        $result = $self->ListResourceTelemetryForOrganization(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TelemetryConfigurations') foreach (@{ $result->TelemetryConfigurations });
    }

    return undef
  }


  sub operations { qw/GetTelemetryEvaluationStatus GetTelemetryEvaluationStatusForOrganization ListResourceTelemetry ListResourceTelemetryForOrganization StartTelemetryEvaluation StartTelemetryEvaluationForOrganization StopTelemetryEvaluation StopTelemetryEvaluationForOrganization / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ObservabilityAdmin - Perl Interface to AWS CloudWatch Observability Admin Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ObservabilityAdmin');
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

Amazon CloudWatch Obsersavability Admin to control temletry config for
your AWS Organization or account. Telemetry config cong to discover and
understand the state of telemetry conguration for your AWS resources
from a central view in the CloudWatch console. Telemetry cong simplies
the process of auditing your telemetry collection congurations across
multiple resource types across your AWS Organization or account. For
more information, see Auditing CloudWatch telemetry congurations
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/telemetry-config-cloudwatch.html)
in the CloudWatch User Guide.

For information on the permissions you need to use this API, see
Identity and access management for Amazon CloudWatch
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/auth-and-access-control-cw.html)
in the CloudWatch User Guide.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10>


=head1 METHODS

=head2 GetTelemetryEvaluationStatus

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::ObservabilityAdmin::GetTelemetryEvaluationStatus>

Returns: a L<Paws::ObservabilityAdmin::GetTelemetryEvaluationStatusOutput> instance

Returns the current onboarding status of the telemetry config feature,
including the status of the feature and reason the feature failed to
start or stop.


=head2 GetTelemetryEvaluationStatusForOrganization

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::ObservabilityAdmin::GetTelemetryEvaluationStatusForOrganization>

Returns: a L<Paws::ObservabilityAdmin::GetTelemetryEvaluationStatusForOrganizationOutput> instance

This returns the onboarding status of the telemetry configuration
feature for the organization. It can only be called by a Management
Account of an AWS Organization or an assigned Delegated Admin Account
of AWS CloudWatch telemetry config.


=head2 ListResourceTelemetry

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceIdentifierPrefix => Str]

=item [ResourceTags => L<Paws::ObservabilityAdmin::TagMapInput>]

=item [ResourceTypes => ArrayRef[Str|Undef]]

=item [TelemetryConfigurationState => L<Paws::ObservabilityAdmin::TelemetryConfigurationState>]


=back

Each argument is described in detail in: L<Paws::ObservabilityAdmin::ListResourceTelemetry>

Returns: a L<Paws::ObservabilityAdmin::ListResourceTelemetryOutput> instance

Returns a list of telemetry configurations for AWS resources supported
by telemetry config. For more information, see Auditing CloudWatch
telemetry configurations
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/telemetry-config-cloudwatch.html).


=head2 ListResourceTelemetryForOrganization

=over

=item [AccountIdentifiers => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceIdentifierPrefix => Str]

=item [ResourceTags => L<Paws::ObservabilityAdmin::TagMapInput>]

=item [ResourceTypes => ArrayRef[Str|Undef]]

=item [TelemetryConfigurationState => L<Paws::ObservabilityAdmin::TelemetryConfigurationState>]


=back

Each argument is described in detail in: L<Paws::ObservabilityAdmin::ListResourceTelemetryForOrganization>

Returns: a L<Paws::ObservabilityAdmin::ListResourceTelemetryForOrganizationOutput> instance

Returns a list of telemetry configurations for AWS resources supported
by telemetry config in the organization.


=head2 StartTelemetryEvaluation

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::ObservabilityAdmin::StartTelemetryEvaluation>

Returns: nothing

This action begins onboarding onboarding the caller AWS account to the
telemetry config feature.


=head2 StartTelemetryEvaluationForOrganization

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::ObservabilityAdmin::StartTelemetryEvaluationForOrganization>

Returns: nothing

This actions begins onboarding the organization and all member accounts
to the telemetry config feature.


=head2 StopTelemetryEvaluation

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::ObservabilityAdmin::StopTelemetryEvaluation>

Returns: nothing

This action begins offboarding the caller AWS account from the
telemetry config feature.


=head2 StopTelemetryEvaluationForOrganization

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::ObservabilityAdmin::StopTelemetryEvaluationForOrganization>

Returns: nothing

This action offboards the Organization of the caller AWS account from
thef telemetry config feature.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllResourceTelemetry(sub { },[MaxResults => Int, NextToken => Str, ResourceIdentifierPrefix => Str, ResourceTags => L<Paws::ObservabilityAdmin::TagMapInput>, ResourceTypes => ArrayRef[Str|Undef], TelemetryConfigurationState => L<Paws::ObservabilityAdmin::TelemetryConfigurationState>])

=head2 ListAllResourceTelemetry([MaxResults => Int, NextToken => Str, ResourceIdentifierPrefix => Str, ResourceTags => L<Paws::ObservabilityAdmin::TagMapInput>, ResourceTypes => ArrayRef[Str|Undef], TelemetryConfigurationState => L<Paws::ObservabilityAdmin::TelemetryConfigurationState>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TelemetryConfigurations, passing the object as the first parameter, and the string 'TelemetryConfigurations' as the second parameter 

If not, it will return a a L<Paws::ObservabilityAdmin::ListResourceTelemetryOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResourceTelemetryForOrganization(sub { },[AccountIdentifiers => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, ResourceIdentifierPrefix => Str, ResourceTags => L<Paws::ObservabilityAdmin::TagMapInput>, ResourceTypes => ArrayRef[Str|Undef], TelemetryConfigurationState => L<Paws::ObservabilityAdmin::TelemetryConfigurationState>])

=head2 ListAllResourceTelemetryForOrganization([AccountIdentifiers => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, ResourceIdentifierPrefix => Str, ResourceTags => L<Paws::ObservabilityAdmin::TagMapInput>, ResourceTypes => ArrayRef[Str|Undef], TelemetryConfigurationState => L<Paws::ObservabilityAdmin::TelemetryConfigurationState>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TelemetryConfigurations, passing the object as the first parameter, and the string 'TelemetryConfigurations' as the second parameter 

If not, it will return a a L<Paws::ObservabilityAdmin::ListResourceTelemetryForOrganizationOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

