package Paws::EC2::AttributeSummary;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str', request_name => 'attributeName', traits => ['NameInRequest']);
  has MostFrequentValue => (is => 'ro', isa => 'Str', request_name => 'mostFrequentValue', traits => ['NameInRequest']);
  has NumberOfMatchedAccounts => (is => 'ro', isa => 'Int', request_name => 'numberOfMatchedAccounts', traits => ['NameInRequest']);
  has NumberOfUnmatchedAccounts => (is => 'ro', isa => 'Int', request_name => 'numberOfUnmatchedAccounts', traits => ['NameInRequest']);
  has RegionalSummaries => (is => 'ro', isa => 'ArrayRef[Paws::EC2::RegionalSummary]', request_name => 'regionalSummarySet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AttributeSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::AttributeSummary object:

  $service_obj->Method(Att1 => { AttributeName => $value, ..., RegionalSummaries => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::AttributeSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeName

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AttributeName => Str

The name of the attribute.


=head2 MostFrequentValue => Str

The configuration value that is most frequently observed for the
attribute.


=head2 NumberOfMatchedAccounts => Int

The number of accounts with the same configuration value for the
attribute that is most frequently observed.


=head2 NumberOfUnmatchedAccounts => Int

The number of accounts with a configuration value different from the
most frequently observed value for the attribute.


=head2 RegionalSummaries => ArrayRef[L<Paws::EC2::RegionalSummary>]

The summary report for each Region for the attribute.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
