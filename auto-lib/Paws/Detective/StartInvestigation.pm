
package Paws::Detective::StartInvestigation;
  use Moose;
  has EntityArn => (is => 'ro', isa => 'Str', required => 1);
  has GraphArn => (is => 'ro', isa => 'Str', required => 1);
  has ScopeEndTime => (is => 'ro', isa => 'Str', required => 1);
  has ScopeStartTime => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartInvestigation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/investigations/startInvestigation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Detective::StartInvestigationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::StartInvestigation - Arguments for method StartInvestigation on L<Paws::Detective>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartInvestigation on the
L<Amazon Detective|Paws::Detective> service. Use the attributes of this class
as arguments to method StartInvestigation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartInvestigation.

=head1 SYNOPSIS

    my $api.detective = Paws->service('Detective');
    my $StartInvestigationResponse = $api . detective->StartInvestigation(
      EntityArn      => 'MyEntityArn',
      GraphArn       => 'MyGraphArn',
      ScopeEndTime   => '1970-01-01T01:00:00',
      ScopeStartTime => '1970-01-01T01:00:00',

    );

    # Results:
    my $InvestigationId = $StartInvestigationResponse->InvestigationId;

    # Returns a L<Paws::Detective::StartInvestigationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.detective/StartInvestigation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EntityArn => Str

The unique Amazon Resource Name (ARN) of the IAM user and IAM role.



=head2 B<REQUIRED> GraphArn => Str

The Amazon Resource Name (ARN) of the behavior graph.



=head2 B<REQUIRED> ScopeEndTime => Str

The data and time when the investigation ended. The value is an UTC
ISO8601 formatted string. For example, C<2021-08-18T16:35:56.284Z>.



=head2 B<REQUIRED> ScopeStartTime => Str

The data and time when the investigation began. The value is an UTC
ISO8601 formatted string. For example, C<2021-08-18T16:35:56.284Z>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartInvestigation in L<Paws::Detective>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

