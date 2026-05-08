package Paws::Artifact;
  use Moose;
  sub service { 'artifact' }
  sub signing_name { 'artifact' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub GetAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Artifact::GetAccountSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Artifact::GetReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReportMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Artifact::GetReportMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTermForReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Artifact::GetTermForReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCustomerAgreements {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Artifact::ListCustomerAgreements', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Artifact::ListReports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Artifact::PutAccountSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllCustomerAgreements {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCustomerAgreements(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCustomerAgreements(@_, nextToken => $next_result->nextToken);
        push @{ $result->customerAgreements }, @{ $next_result->customerAgreements };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'customerAgreements') foreach (@{ $result->customerAgreements });
        $result = $self->ListCustomerAgreements(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'customerAgreements') foreach (@{ $result->customerAgreements });
    }

    return undef
  }
  sub ListAllReports {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListReports(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListReports(@_, nextToken => $next_result->nextToken);
        push @{ $result->reports }, @{ $next_result->reports };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'reports') foreach (@{ $result->reports });
        $result = $self->ListReports(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'reports') foreach (@{ $result->reports });
    }

    return undef
  }


  sub operations { qw/GetAccountSettings GetReport GetReportMetadata GetTermForReport ListCustomerAgreements ListReports PutAccountSettings / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Artifact - Perl Interface to AWS AWS Artifact

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Artifact');
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

This reference provides descriptions of the low-level AWS Artifact
Service API.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10>


=head1 METHODS

=head2 GetAccountSettings






Each argument is described in detail in: L<Paws::Artifact::GetAccountSettings>

Returns: a L<Paws::Artifact::GetAccountSettingsResponse> instance

Get the account settings for Artifact.


=head2 GetReport

=over

=item ReportId => Str

=item TermToken => Str

=item [ReportVersion => Int]


=back

Each argument is described in detail in: L<Paws::Artifact::GetReport>

Returns: a L<Paws::Artifact::GetReportResponse> instance

Get the content for a single report.


=head2 GetReportMetadata

=over

=item ReportId => Str

=item [ReportVersion => Int]


=back

Each argument is described in detail in: L<Paws::Artifact::GetReportMetadata>

Returns: a L<Paws::Artifact::GetReportMetadataResponse> instance

Get the metadata for a single report.


=head2 GetTermForReport

=over

=item ReportId => Str

=item [ReportVersion => Int]


=back

Each argument is described in detail in: L<Paws::Artifact::GetTermForReport>

Returns: a L<Paws::Artifact::GetTermForReportResponse> instance

Get the Term content associated with a single report.


=head2 ListCustomerAgreements

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Artifact::ListCustomerAgreements>

Returns: a L<Paws::Artifact::ListCustomerAgreementsResponse> instance

List active customer-agreements applicable to calling identity.


=head2 ListReports

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Artifact::ListReports>

Returns: a L<Paws::Artifact::ListReportsResponse> instance

List available reports.


=head2 PutAccountSettings

=over

=item [NotificationSubscriptionStatus => Str]


=back

Each argument is described in detail in: L<Paws::Artifact::PutAccountSettings>

Returns: a L<Paws::Artifact::PutAccountSettingsResponse> instance

Put the account settings for Artifact.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllCustomerAgreements(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllCustomerAgreements([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - customerAgreements, passing the object as the first parameter, and the string 'customerAgreements' as the second parameter 

If not, it will return a a L<Paws::Artifact::ListCustomerAgreementsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllReports(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllReports([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - reports, passing the object as the first parameter, and the string 'reports' as the second parameter 

If not, it will return a a L<Paws::Artifact::ListReportsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

