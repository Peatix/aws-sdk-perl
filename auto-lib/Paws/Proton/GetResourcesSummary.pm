
package Paws::Proton::GetResourcesSummary;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourcesSummary');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::GetResourcesSummaryOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::GetResourcesSummary - Arguments for method GetResourcesSummary on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourcesSummary on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method GetResourcesSummary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourcesSummary.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $GetResourcesSummaryOutput = $proton->GetResourcesSummary();

    # Results:
    my $Counts = $GetResourcesSummaryOutput->Counts;

    # Returns a L<Paws::Proton::GetResourcesSummaryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/GetResourcesSummary>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourcesSummary in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

